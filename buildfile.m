function plan = buildfile
import matlab.buildtool.tasks.TestTask;

plan = buildplan;
plan("test") = TestTask(SourceFiles="code/", TestResults="test-results/results.xml");
plan.DefaultTasks = "test";

end
