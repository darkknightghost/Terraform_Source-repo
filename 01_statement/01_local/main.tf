provider "local" {
}

# Infra resource
resource "local_file" "foo" {
    # path.module - String inter pdation terraform 변수
    # ${path.module} : String interpolation 문법
    # 파일이 위치한 디렉토리 경로, main.tf 
    filename = "${path.module}/foo.txt"
    content = data.local_file.bar.content
}

# 입력 파일
data "local_file" "bar" {
    filename = "${path.module}/bar.txt"
}