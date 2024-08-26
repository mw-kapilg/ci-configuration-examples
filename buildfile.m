function plan = buildfile
import matlab.buildtool.tasks.TestTask

plan = buildplan(localfunctions);
plan.DefaultTasks = "my";

end

function myTask(~)
    disp('Hello World!')
end

function my1Task(~)
    disp('Hello World!')
end

function my2Task(~)
    disp('Hello World!')
end

function my3Task(~)
    error('myError');
    disp('Hello World!')
end
