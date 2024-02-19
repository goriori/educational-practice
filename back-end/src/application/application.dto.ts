export class createApplicationDto {
  name: string;
  lastName: string;
  phone: number;
  address: string;
}

export class updateApplicationDto extends createApplicationDto {}
