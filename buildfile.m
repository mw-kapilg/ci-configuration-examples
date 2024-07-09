function plan = buildfile
import matlab.buildtool.tasks.TestTask

plan = buildplan(localfunctions);
plan.DefaultTasks = "my";

% Add a task to run the tests in the project
plan("test") = TestTask(SourceFiles="code", TestResults="test-results/results.xml");
end

function myTask(~)
    disp('Hello World!')
    % error('my error')
end
