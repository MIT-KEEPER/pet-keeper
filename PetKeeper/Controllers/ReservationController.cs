﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using PetKeeper.Common;
using PetKeeper.Models;
using PetKeeper.Services;

namespace PetKeeper.Controllers
{
    [Authorize]
    public class ReservationController : Controller
    {
        private readonly IDatabaseService _database;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public ReservationController(IDatabaseService database, UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            _database = database;
            _userManager = userManager;
            _roleManager = roleManager;
        }
        // GET: Reservation
        public async Task<ActionResult> Index()
        {
            //var res = _database.GetData();
            //return View("Index");
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserId = currentUser.Id;
            var userName = currentUser.UserName;

            var result = new Result<List<PodaciViewModel>>();
            //result = _database.GetData(currentUserId);
            if (User.Identity.IsAuthenticated)
            {
                if (User.IsInRole("Admin"))
                {
                    result = _database.GetAllData(currentUserId);
                }
                else
                {
                    result = _database.GetData(currentUserId);
                }
            }
            if (result.Succedded)
            {
                return View(result.Value);
            }
            else
            {
                return Json("Error");
            }
            
        }

        public async Task<ActionResult> Details(long id)
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserId = currentUser.Id;

            var result = _database.GetDetails(id, currentUserId);

            if (ModelState.IsValid)
            {
                if (result.Succedded)
                {
                    return PartialView("_DetailsPartial", result.Value);
                }
                else
                {
                    return Unauthorized();
                }
            }
            return View(result);
        }

        // GET: Reservation/Create
        public async Task<ActionResult> Create()
        {
            
            var model = new PodaciViewModel();
            var user = await _userManager.FindByEmailAsync(model.User);
            return PartialView("_CreatePartial", model);
        }

        // POST: Reservation/Create
        [HttpPost]
        public async Task<ActionResult> Create(PodaciViewModel model)
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserId = currentUser.Id;
            var userName = currentUser.UserName;
            
           
            var result = _database.AddData(model, currentUserId, userName);

                if (ModelState.IsValid)
                {
                    if (result.Succedded)
                    {
                        return Json(result.Succedded);
                    }
                    else
                    {
                        return Unauthorized();
                    }
                }
                return View(model);
            
        }

        // GET: Reservation/Edit/5
        public async Task<ActionResult> Edit(long id)
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserId = currentUser.Id;

          
            var result = _database.GetEdit(id, currentUserId);

            if (ModelState.IsValid)
            {
                if (result.Succedded)
                {
                    return PartialView("_EditPartial", result.Value);
                }
                else
                {
                    return Unauthorized();
                }
            }
            return View(result);
        }

        // POST: Reservation/Edit/5
        [HttpPost]
        public async Task<ActionResult> Edit(PodaciViewModel model)
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserId = currentUser.Id;
            var roles = await _userManager.GetRolesAsync(currentUser);

            var result = _database.Update(model, currentUserId, roles);
            if (ModelState.IsValid)
            {
                if (result.Succedded)
                {
                    return Json(result.Succedded);
                }
                else
                {
                    return Unauthorized();
                }
            }
            return View(model);
        }

        [HttpPost]
        //[ValidateAntiForgeryToken]
        public async Task<ActionResult> Delete(long id)
        {
            var currentUser = await _userManager.GetUserAsync(User);
            var currentUserId = currentUser.Id;

            var result = _database.Delete(id, currentUserId);

            if (result.Succedded)
            {
                return Json(result.Succedded);
            }
            else
            {
                return Unauthorized();
            }
        }
    }
}