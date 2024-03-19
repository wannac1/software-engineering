echo "changing directory to Tasks"
cd /e/软工/Tasks  # 更改为您的实际路径

echo "creating table"
cat schema.sql | sqlite3 tasks.db  # 确保 schema.sql 在当前目录

echo "building the go binary"
go build -o Tasks

echo "starting the binary"
./Tasks
