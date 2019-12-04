## Lumkani's Deployment Strategy 📚

### Branches

As a branch names glossary, at Lumkani we have two immortal branches: **master** and **dev**. Added to that, there are a couple of ephemeral branches: `feature braches` and `release-*`

* **master** is our production version
* **dev** is our development branch where the team
* **feature branches** are branches usually branched off **dev** (safe some exceptions) which are used to develop a new feature in a isolated manner
* __release-*__ is our release branch, this branch is deploy and tested in QA and one that is approved it is merged to **master**

### Development process

#### Grooming session

There is grooming session in order to prioritize our work and also explain the reason why certain task has been chosen. Once the grooming is done, the task goes through all the stages of our development process. We make use of a Kanban board (on Jira) in order to follow our development process flow.

#### Development stages (Kanban board)

The stages used in our development process and represented in our Kanban board are:

##### Investigate

This is one of our most important stage. The task owner is responsible to think through the task and how to guide it up to <strong>production</strong> after all done is when it is deployed =D

Here is where the developer analises the existing subtask, creates more aligning with deployment strateges, we do our best so each subtask is deployable independently from any other task or deployment of other application. The subtask are not create based on writting code only, but with the perspective as **"how can this task be deployed?"**.

It happenes that the task is actually different from expected when prioritized or there are more blockers than antecipated. So at the end of this stage, the developer aligns with the team if the cost and value of the current task still makes sense to be done now given our long-term goals.

##### Selected for development

When the task is at this stage, it means that after the investigation the team has judged that it is the right time to work on it. And the task is ready to be developed.

##### In development

Someone started to work on the task. The task owner creates a **feature branch** and starts to have fun with it.

#### How does the developer picks what to do next?

From right to the left
The developer looks in the backlog and pick the next story, bug or task in the top of our backlog. For the sake of simplicity I will refer to all those types of tickets just as task.
