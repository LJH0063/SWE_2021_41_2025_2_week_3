FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  number_list = []\n\
  current_number = n\n\
  new_number = 0\n\
\n\
  while (True):\n\
    while (current_number >= 1):\n\
      new_number += (current_number % 10) ** 2\n\
      current_number = current_number // 10\n\
\n\
    if (new_number == 1):\n\
      return True\n\
\n\
    if (new_number in number_list):\n\
      return False\n\
\n\
    number_list.append(new_number)\n\
    current_number = new_number\n\
    new_number = 0\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
    "]