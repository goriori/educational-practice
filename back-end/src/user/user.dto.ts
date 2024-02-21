export class createUserDto {
  name: string;
  lastName: string;
  phone: number;
  password: string;
}

export class authUserDto {
  phone: number;
  password: string;
}


export class updateUserDto extends createUserDto {}
