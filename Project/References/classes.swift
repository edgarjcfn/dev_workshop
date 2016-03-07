public class Job
{
  public var name:String = "";
  public var address:String = "";
}

public class Recruiter
{
  public var name: String = "";
  public var bio: String = "";
  public var jobs: [Job] = [];


  public func listJobs()
  {
    print("-----")
    print ("I'm recruiter \(name) and I have these jobs:")
    for job in jobs
    {
      print ("Job: \(job.name) at \(job.address)")
    }
    print("-----")
  }
}

func ask(question:String) -> String
{
  print(question)
  let answer = readLine()!
  return answer
}

// Get recruiter info
var given_name = ask("What's your name?")
var given_bio = ask("Tell us about yourself.")

// Create recruiter profile
var recruiter = Recruiter()
recruiter.name = given_name
recruiter.bio = given_bio
print("Thank you \(recruiter.name). Your profile is created.")

// Get job info

while (ask("Would you like to post a job?") == "yes")
{
  var given_job_name = ask("What's the job name?")
  var given_job_address = ask("At what address?")

  // Create Job
  var job = Job()
  job.name = given_job_name
  job.address = given_job_address
  print("Thank you the job has been created.")

  // Add job to recruiter (Recruiter owns that job offering)
  recruiter.jobs.append(job)
}

recruiter.listJobs()
