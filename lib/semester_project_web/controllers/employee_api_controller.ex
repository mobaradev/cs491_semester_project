defmodule SemesterProjectWeb.EmployeeApiController do
  alias SemesterProjectWeb.HumanResources

  use SemesterProjectWeb, :controller
  alias SemesterProject.HumanResources

  def index(conn, _params) do
    employees = HumanResources.list_employees()
    render(conn, :index, employees: employees)
  end
end
