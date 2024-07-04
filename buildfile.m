function plan = buildfile
import matlab.buildtool.tasks.TestTask;

plan = buildplan;
plan("test") = TestTask(SourceFiles="code");
plan.DefaultTasks = "test";

end
