## Lumkani's Deployment Strategy 📚

### Branches

As a branch names glossary, at Lumkani we have two immortal branches: <strong>master</strong> and <strong>dev</strong>. Added to that, there are a couple of ephemeral branches: <strong>feature braches</strong> and <strong>release-*</strong>


<ul>
<li><strong>master</strong> is our production version</li>
<li><strong>dev</strong> is our development branch where the team </li>
<li><strong>feature branches</strong> are branches usually branched off <strong>dev</strong> (safe some exceptions) which are used to develop a new feature in a isolated manner</li>
<li><strong>release-*</strong> is our release branch, this branch is deploy and tested in QA and one that is approved it is merged to <strong>master</strong> </li>
</ul>

### Development process

#### Grooming session
There is grooming session in order to prioritize our work and also explain the reason why certain task has been chosen. Once the grooming is done, the task goes through all the stages of our development process. We make use of a Kanban board (on Jira) in order to follow our development process flow.

#### Development stages (Kanban board)

The stages used in our development process and represented in our Kanban board are:

<ul>
<li>
<strong>Investigate</strong>
<p>
This is one of our most important stage. The task owner is responsible to think through the task and how to guide it up to <strong>production</strong> after all done is when it is deployed =D
</p>
<p>
Here is where the developer analises the existing subtask, creates more aligning with deployment strateges, we do our best so each subtask is deployable independently from any other task or deployment of other application. The subtask are not create based on writting code only, but with the perspective as <strong>"how can this task be deployed?"</strong>.
</p>
<p>
It happenes that the task is actually different from expected when prioritized or there are more blockers than antecipated. So at the end of this stage, the developer aligns with the team if the cost and value of the current task still makes sense to be done, given our long-term goals.
</p>
</li>

<li>
<strong>Selected for development</strong>
<p>
When the task is at this stage, it means that after the investigation the team has judged that it is the right time to work on it. And the task is ready to be developed
</p>

</li>

<li>
<strong>In development</strong>
<p>
Someone has started to work on the task. The task owner creates a <strong>feature branch</strong> and starts to have fun with it. Initially, the <strong>Main task (or Story)</strong> stays in <strong>Selected for developement</strong> stage and only the subtasks are moved to other stage. If any new task is needed to be created due to a new information found or, sometimes, a bug, it is created under the  <strong>Main task</strong>.
</p>
</li>

</ul>

#### How does the developer picks what to do next?
From right to the left
The developer looks in the backlog and pick the next story, bug or task in the top of our backlog. For the sake of simplicity I will refer to all those types of tickets just as task.