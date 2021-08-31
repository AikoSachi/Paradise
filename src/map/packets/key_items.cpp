﻿/*
===========================================================================

  Copyright (c) 2010-2015 Darkstar Dev Teams

  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see http://www.gnu.org/licenses/

===========================================================================
*/

#include "../../common/socket.h"

#include <cstring>

#include "../entities/charentity.h"
#include "key_items.h"

CKeyItemsPacket::CKeyItemsPacket(CCharEntity* PChar, KEYS_TABLE KeyTable)
{
    this->type = 0x55;
    this->size = 0x44;

    XI_DEBUG_BREAK_IF(KeyTable >= MAX_KEYS_TABLE);

    memcpy(data + (0x04), &(PChar->keys.tables[KeyTable].keyList), 0x40);
    memcpy(data + (0x44), &(PChar->keys.tables[KeyTable].seenList), 0x40);

    ref<uint8>(0x84) = KeyTable;
}
