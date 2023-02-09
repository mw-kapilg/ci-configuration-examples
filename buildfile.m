function plan = buildfile
    % Create a plan from the task functions
    plan = buildplan(localfunctions);
    
    % Make the "mex" task the default task in the plan
    plan.DefaultTasks = "mex";

%     % Make the "mex" task dependent on the "check" task
%     plan("mex").Dependencies = ["check"];
end

function mexTask(~)
    cd codeDesign
    mex -setup C
    mex arrayProduct.c
end

% function checkTask(~)
%     % Identify code issues
%     issues = codeIssues;
%     assert(isempty(issues.Issues),formattedDisplayText(issues.Issues))
% end
% 
