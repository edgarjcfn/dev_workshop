func emojiMessage(emoji:String, message:String)
{
  print(">> \(emoji)    \(message)")
}

func smile(msg: String)
{
  emojiMessage("😋", message:msg)
  print("")
}

func sad(msg: String)
{
  emojiMessage("😔", message:msg)
  print("")
}

func doubt(msg: String)
{
  emojiMessage("🤔", message:msg)
}

func embarassed(msg: String)
{
  emojiMessage("😓", message:msg)
}

func startValue() -> Int
{
  return 2
}

func next(x:Int) -> Int
{
  return x - 1
}

func shouldContinue(index:Int, collection:[String]) -> Bool
{
  return index >= 0
}

func assertQuestion(question:String, expectedAnswer:String) -> Bool
{
  doubt(question)
  var given_answer = readLine()!
  if given_answer == expectedAnswer
  {
    smile("You are right");
    return true
  }
  else
  {
    return false;
  }
}


var questions = ["What's the meaning of life?", "How old is Donald Trump?", "How much is HeyJobs going to be making a year from now?"]
var answers = ["42", "98", "1 billion"]

// Version 1
var index = startValue();
while (shouldContinue(index, collection:questions))
{
  var question = questions[index]
  doubt(question)
  var given_answer = readLine()!
  var actual_answer = answers[index]
  if given_answer == actual_answer
  {
    smile("You are right!!")
  }
  else
  {
    embarassed("I'll give you one more chance")
    doubt(question)
    var given_answer = readLine()!
    if given_answer == actual_answer
    {
      smile("You are right!! ")
    }
    else
    {
      sad("You failed!!")
    }
  }
  index = next(index);
}


// Version 2
index = startValue();
while (shouldContinue(index, collection:questions))
{
  var question = questions[index]
  var actual_answer = answers[index]

  var user_was_right = assertQuestion(question, expectedAnswer:actual_answer)
  if !user_was_right
  {
    embarassed("I'll give you one more chance")
    var second_chance_success = assertQuestion(question, expectedAnswer:actual_answer)
    if !second_chance_success
    {
      sad("You failed!!")
    }
  }
  index = next(index);
}
