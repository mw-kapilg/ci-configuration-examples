function plan = buildfile
import matlab.buildtool.tasks.TestTask

plan = buildplan(localfunctions);
plan.DefaultTasks = "my";

end

function myTask(~)
    disp('Hello World!')
end
