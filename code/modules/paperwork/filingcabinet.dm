/* Filing cabinets!
 * Contains:
 *		Filing Cabinets
 *		Security Record Cabinets
 *		Medical Record Cabinets
 */


/*
 * Filing Cabinets
 */
/obj/structure/filingcabinet
	name = "filing cabinet"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE
	var/list/can_hold = list(
		/obj/item/weapon/paper,
		/obj/item/weapon/folder,
		/obj/item/weapon/photo,
		/obj/item/weapon/paper_bundle,
		/obj/item/weapon/sample)

/obj/structure/filingcabinet/chestdrawer
	name = "chest drawer"
	icon_state = "chestdrawer"

/obj/structure/filingcabinet/wallcabinet
	name = "wall-mounted filing cabinet"
	desc = "A filing cabinet installed into a cavity in the wall to save space. Wow!"
	icon_state = "wallcabinet"
	density = 0
	obj_flags = 0


/obj/structure/filingcabinet/filingcabinet	//not changing the path to avoid unecessary map issues, but please don't name stuff like this in the future -Pete
	icon_state = "tallcabinet"

/////////////////
// SCP DRAWERS //
/////////////////

// SAFE DRAWERS

/obj/structure/filingcabinet/scp/safe/scp1to999
	name = "SCP Documents - Safe - 1 to 999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

	New()
		..()
		new /obj/item/weapon/paper/scp/safe/scp013(src)
		new /obj/item/weapon/paper/scp/safe/scp113(src)
		new /obj/item/weapon/paper/scp/safe/scp131(src)
		new /obj/item/weapon/paper/scp/safe/scp500(src)
		new /obj/item/weapon/paper/scp/safe/scp999(src)
		update_icon()

/obj/structure/filingcabinet/scp/safe/scp1000to1999
	name = "SCP Documents - Safe - 1000 to 1999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

/obj/structure/filingcabinet/scp/safe/scp2000to2999
	name = "SCP Documents - Safe - 2000 to 2999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

/obj/structure/filingcabinet/scp/safe/scp3000to3999
	name = "SCP Documents - Safe - 3000 to 3999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

// EUCLID DRAWERS

/obj/structure/filingcabinet/scp/euclid/scp1to999
	name = "SCP Documents - Euclid - 1 to 999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

	New()
		..()
		new /obj/item/weapon/paper/scp/euclid/scp012(src)
		new /obj/item/weapon/paper/scp/euclid/scp049(src)
		new /obj/item/weapon/paper/scp/euclid/scp078(src)
		new /obj/item/weapon/paper/scp/euclid/scp096(src)
		new /obj/item/weapon/paper/scp/euclid/scp096/addendum1(src)
		new /obj/item/weapon/paper/scp/euclid/scp151(src)
		new /obj/item/weapon/paper/scp/euclid/scp151/addendum1(src)
		new /obj/item/weapon/paper/scp/euclid/scp153(src)
		new /obj/item/weapon/paper/scp/euclid/scp153/addendum1(src)
		new /obj/item/weapon/paper/scp/euclid/scp173(src)
		new /obj/item/weapon/paper/scp/euclid/scp513(src)
		new /obj/item/weapon/paper/scp/euclid/scp895(src)
		update_icon()

/obj/structure/filingcabinet/scp/euclid/scp1000to1999
	name = "SCP Documents - Euclid - 1000 to 1999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

/obj/structure/filingcabinet/scp/euclid/scp2000to2999
	name = "SCP Documents - Euclid - 2000 to 2999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

/obj/structure/filingcabinet/scp/euclid/scp3000to3999
	name = "SCP Documents - Euclid - 3000 to 3999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new
		update_icon()
*/

// KETER DRAWERS

/obj/structure/filingcabinet/scp/keter/scp1to999
	name = "SCP Documents - Keter - 1 to 999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

	New()
		..()
		new /obj/item/weapon/paper/scp/keter/scp106(src)
		new /obj/item/weapon/paper/scp/keter/scp939(src)
		update_icon()


/obj/structure/filingcabinet/scp/keter/scp1000to1999
	name = "SCP Documents - Keter - 1000 to 1999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

/obj/structure/filingcabinet/scp/keter/scp2000to2999
	name = "SCP Documents - Keter - 2000 to 2999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

/obj/structure/filingcabinet/scp/keter/scp3000to3999
	name = "SCP Documents - Keter - 3000 to 3999"
	desc = "A large cabinet with drawers."
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "filingcabinet"
	density = 1
	anchored = 1
	atom_flags = ATOM_FLAG_CLIMBABLE
	obj_flags = OBJ_FLAG_ANCHORABLE

/*	New()
		..()
		new /obj/item/weapon/paper/scp999(src)
		update_icon()
*/

/obj/structure/filingcabinet/Initialize()
	for(var/obj/item/I in loc)
		if(istype(I, /obj/item/weapon/paper) || istype(I, /obj/item/weapon/folder) || istype(I, /obj/item/weapon/photo) || istype(I, /obj/item/weapon/paper_bundle))
			I.loc = src
	. = ..()

/obj/structure/filingcabinet/attackby(obj/item/P as obj, mob/user as mob)
	if(is_type_in_list(P, can_hold))
		add_fingerprint(user)
		to_chat(user, "<span class='notice'>You put [P] in [src].</span>")
		user.drop_item()
		P.loc = src
		icon_state = "[initial(icon_state)]-open"
		sleep(5)
		icon_state = initial(icon_state)
		updateUsrDialog()
	else
		..()
	return


/obj/structure/filingcabinet/attack_hand(mob/user as mob)
	if(contents.len <= 0)
		to_chat(user, "<span class='notice'>\The [src] is empty.</span>")
		return

	user.set_machine(src)
	var/dat = "<center><table>"
	for(var/obj/item/P in src)
		dat += "<tr><td><a href='?src=\ref[src];retrieve=\ref[P]'>[P.name]</a></td></tr>"
	dat += "</table></center>"
	show_browser(user, "<html><meta charset=\"UTF-8\"><head><title>[name]</title></head><body>[jointext(dat,null)]</body></html>", "window=filingcabinet;size=350x300")

	return

/obj/structure/filingcabinet/attack_tk(mob/user)
	if(anchored)
		attack_self_tk(user)
	else
		..()

/obj/structure/filingcabinet/attack_self_tk(mob/user)
	if(contents.len)
		if(prob(40 + contents.len * 5))
			var/obj/item/I = pick(contents)
			I.loc = loc
			if(prob(25))
				step_rand(I)
			to_chat(user, "<span class='notice'>You pull \a [I] out of [src] at random.</span>")
			return
	to_chat(user, "<span class='notice'>You find nothing in [src].</span>")

/obj/structure/filingcabinet/Topic(href, href_list)
	if(href_list["retrieve"])
		usr << browse("", "window=filingcabinet") // Close the menu

		//var/retrieveindex = text2num(href_list["retrieve"])
		var/obj/item/P = locate(href_list["retrieve"])//contents[retrieveindex]
		if(istype(P) && (P.loc == src) && src.Adjacent(usr))
			usr.put_in_hands(P)
			updateUsrDialog()
			icon_state = "[initial(icon_state)]-open"
			spawn(0)
				sleep(5)
				icon_state = initial(icon_state)