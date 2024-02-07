export class createUserDto {
  name: string;
  lastName: string;
  phone: number;
  address: string;
}

export class updateUserDto extends createUserDto {}
