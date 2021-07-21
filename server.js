const inquirer = require("inquirer");
const department = require("./utils/department");
const role = require("./utils/role");
const employee = require("./utils/employee");

// view all departments, view all roles, view all employees, add a department, add a role, add an employee, and update an employee role
const mainMenu = () => {
  return inquirer.prompt([
    {
      type: "rawlist",
      name: "selection",
      message: "What would you like to do ?",
      choices: [
        "View All Departments",
        "View All Roles",
        "View All Employees",
        "Add a Department",
        "Add a Role",
        "Add an Employee",
        "Update an Employee Role",
        "View Employees by Manager",
      ],
    },
  ]);
};

async function mainLoop() {
  mainMenu().then(async answer => {
    if (answer.selection === "View All Departments") {
      const departments = await department.showAll();
      if (departments.error) {
        console.log(departments.error);
      } else {
        console.table(departments);
      }
      mainLoop();
      return;
    } else if (answer.selection === "View All Roles") {
      const roles = await role.showAll();
      if (roles.error) {
        console.log(roles.error);
      } else {
        console.table(roles);
      }
      mainLoop();
      return;
    } else if (answer.selection === "View All Employees") {
      const employees = await employee.showAll();
      if (employees.error) {
        console.log(employees.error);
      } else {
        console.table(employees);
      }
      mainLoop();
      return;
    } else if (answer.selection === "Add a Department") {
      department.askAdd().then(answer => {
        department.add(answer.name);
        mainLoop();
        return;
      });
    } else if (answer.selection === "Add a Role") {
      const departments = await department.showAll();
      if (departments.error) {
        console.log("You must add a Department first");
        mainLoop();
        return;
      }
      if (departments.length === 0) {
        console.log("You must add a Department first");
        mainLoop();
      } else {
        role.askAdd(departments).then(async answers => {
          await role.add(answers);
          mainLoop();
          return;
        });
      }
    } else if (answer.selection === "Add an Employee") {
      const roles = await role.showAll();
      const employees = await employee.showAll();
      if (roles.error) {
        console.log("You must add a Role first");
        mainLoop();
        return;
      } else {
        employee.askAdd(roles, employees).then(async answer => {
          await employee.add(answer);
          mainLoop();
          return;
        });
      }
    } else if (answer.selection === "Update an Employee Role") {
      const employees = await employee.showAll();
      if (employees.error) {
        console.log("You must add Employees first");
        mainLoop();
        return;
      }
      const roles = await role.showAll();
      employee.askUpdate(employees, roles).then(async answer => {
        await employee.update(answer);
        mainLoop();
        return;
      });
    } else if (answer.selection === "View Employees by Manager") {
      const employees = await employee.showAll();
      if (employees.error) {
        console.log("You must add Employees first");
        mainLoop();
        return;
      }
      employee.askShowByManager(employees).then(async answer => {
        await employee.ShowByManager(answer);
        mainLoop();
        return;
      });
    }
  });
}

mainLoop();
