﻿using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

public partial class LoginDemoDbContext : DbContext
{
    public Models.User GetUserFromDB(string email)
    {
        Models.User user = this.Users.Where(u => u.Email == email).FirstOrDefault();
        return user;
    }

    public Models.User GetUserGrades(string email)
    {
        return this.Users.Where(u => u.Email == email).Include(u=>u.Grade).FirstOrDefault();
    }
}

