contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address viewSuperOwner;
array of uint256 sub_11a3311c;
mapping of struct getsafe;
uint256 stor3;
mapping of uint256 sub_666a7370;
uint256 comission;
mapping of uint256 getReserveAmount;
array of address sub_1c019a52;

function sub_11a3311c(?) {
    require arg2 < sub_11a3311c[arg1]
    return sub_11a3311c[arg1][arg2]
}

function sub_1c019a52(?) {
    require arg1 < sub_1c019a52.length
    return address(sub_1c019a52[arg1])
}

function comission() {
    return comission
}

function sub_666a7370(?) {
    return sub_666a7370[arg1]
}

function blockedContract() {
    return bool(uint8(stor0.field_160))
}

function Getsafe(uint256 arg1) {
    return getsafe[arg1].field_0, 
           address(getsafe[arg1].field_256),
           address(getsafe[arg1].field_512),
           getsafe[arg1].field_768,
           getsafe[arg1].field_1024
}

function viewSuperOwner() {
    return viewSuperOwner
}

function GetUserSafesLength(address arg1) {
    return sub_11a3311c[address(arg1)]
}

function GetReserveAmount(address arg1) {
    return getReserveAmount[address(arg1)]
}

function ChangeComission(uint256 arg1) {
    require msg.sender == viewSuperOwner
    comission = arg1
}

function changeOwner(address arg1) {
    require msg.sender == viewSuperOwner
    viewSuperOwner = arg1
}

function doBlockContract() {
    require msg.sender == viewSuperOwner
    Mask(96, 0, stor0.field_160) = 1
}

function unBlockContract() {
    require msg.sender == viewSuperOwner
    Mask(96, 0, stor0.field_160) = 0
}

function _fallback() payable {
    require msg.value > 0
    require getReserveAmount[0] + msg.value >= getReserveAmount[0]
    getReserveAmount[0] += msg.value
}

function WithdrawSpecialEth(uint256 arg1) {
    require msg.sender == viewSuperOwner
    require arg1 > 0
    require eth.balance(this.address) - sub_666a7370[0] >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function HodlEth(uint256 arg1) payable {
    require not uint8(stor0.field_160)
    require msg.value > 0
    require arg1 > block.timestamp
    sub_11a3311c[address(msg.sender)]++
    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor3
    getsafe[stor3].field_0 = stor3
    address(getsafe[stor3].field_256) = msg.sender
    address(getsafe[stor3].field_512) = 0
    getsafe[stor3].field_768 % 1 = 0
    getsafe[stor3].field_768 = msg.value
    getsafe[stor3].field_1024 = arg1
    require sub_666a7370[0] + msg.value >= sub_666a7370[0]
    sub_666a7370[0] += msg.value
    stor3++
}

function WithdrawSpecialToken(address arg1, uint256 arg2) {
    require msg.sender == viewSuperOwner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] - sub_666a7370[address(arg1)] >= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function WithdrawReserve(address arg1) {
    require msg.sender == viewSuperOwner
    require getReserveAmount[address(arg1)] > 0
    getReserveAmount[address(arg1)] = 0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= getReserveAmount[address(arg1)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, getReserveAmount[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function ClaimHodlToken(address arg1, uint256 arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require arg1
    require arg2 > 0
    require arg3 > block.timestamp
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_11a3311c[address(msg.sender)]++
    sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]] = stor3
    getsafe[stor3].field_0 = stor3
    address(getsafe[stor3].field_256) = msg.sender
    address(getsafe[stor3].field_512) = arg1
    getsafe[stor3].field_768 = arg2
    getsafe[stor3].field_1024 = arg3
    require sub_666a7370[address(arg1)] + arg2 >= sub_666a7370[address(arg1)]
    sub_666a7370[address(arg1)] += arg2
    stor3++
}

function WithdrawAllReserves() {
    require msg.sender == viewSuperOwner
    mem[0] = 0
    mem[32] = 6
    if getReserveAmount[0] <= 0:
        idx = 0
        s = 0
        t = 0
        t = stor[sha3(mem[0 len 64])]
        while idx < sub_1c019a52.length:
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 6
            if getReserveAmount[address(stor7[idx])] <= 0:
                idx = idx + 1
                s = s
                t = address(sub_1c019a52[idx])
                t = t
                continue 
            mem[0] = address(sub_1c019a52[idx])
            mem[32] = 6
            getReserveAmount[address(stor7[idx])] = 0
            mem[100] = msg.sender
            mem[132] = getReserveAmount[address(stor7[idx])]
            require ext_code.size(address(sub_1c019a52[idx]))
            call address(sub_1c019a52[idx]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, getReserveAmount[address(stor7[idx])]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = address(sub_1c019a52[idx])
            t = address(sub_1c019a52[idx])
            t = getReserveAmount[address(stor7[idx])]
            continue 
    else:
        if getReserveAmount[0] > eth.balance(this.address):
            idx = 0
            s = 0
            t = 0
            t = stor[sha3(mem[0 len 64])]
            while idx < sub_1c019a52.length:
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 6
                if getReserveAmount[address(stor7[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 6
                getReserveAmount[address(stor7[idx])] = 0
                mem[100] = msg.sender
                mem[132] = getReserveAmount[address(stor7[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, getReserveAmount[address(stor7[idx])]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = getReserveAmount[address(stor7[idx])]
                continue 
        else:
            getReserveAmount[0] = 0
            call msg.sender with:
               value getReserveAmount[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            s = 0
            t = 0
            t = getReserveAmount[0]
            while idx < sub_1c019a52.length:
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 6
                if getReserveAmount[address(stor7[idx])] <= 0:
                    idx = idx + 1
                    s = s
                    t = address(sub_1c019a52[idx])
                    t = t
                    continue 
                mem[0] = address(sub_1c019a52[idx])
                mem[32] = 6
                getReserveAmount[address(stor7[idx])] = 0
                mem[100] = msg.sender
                mem[132] = getReserveAmount[address(stor7[idx])]
                require ext_code.size(address(sub_1c019a52[idx]))
                call address(sub_1c019a52[idx]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, getReserveAmount[address(stor7[idx])]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = idx + 1
                s = address(sub_1c019a52[idx])
                t = address(sub_1c019a52[idx])
                t = getReserveAmount[address(stor7[idx])]
                continue 
    sub_1c019a52.length = 0
    if sub_1c019a52.length > 0:
        s = 0
        while sub_1c019a52.length > s:
            uint256(sub_1c019a52[s]) = 0
            s = s + 1
            continue 
}

function OwnerRetireHodl(uint256 arg1) {
    require msg.sender == viewSuperOwner
    require getsafe[arg1].field_0
    require getsafe[arg1].field_0
    if getsafe[arg1].field_1024 < block.timestamp:
        if not address(getsafe[arg1].field_512):
            require eth.balance(this.address) >= getsafe[arg1].field_768
            call address(getsafe[arg1].field_256) with:
               value getsafe[arg1].field_768 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(getsafe[arg1].field_512))
            call address(getsafe[arg1].field_512).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= getsafe[arg1].field_768
            require ext_code.size(address(getsafe[arg1].field_512))
            call address(getsafe[arg1].field_512).0xa9059cbb with:
                 gas gas_remaining wei
                args address(getsafe[arg1].field_256), getsafe[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if not getsafe[arg1].field_768:
            require 0 <= getsafe[arg1].field_768
            if not address(getsafe[arg1].field_512):
                require eth.balance(this.address) >= getsafe[arg1].field_768
                call address(getsafe[arg1].field_256) with:
                   value getsafe[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= getsafe[arg1].field_768
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(getsafe[arg1].field_256), getsafe[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require getReserveAmount[address(stor2[arg1].field_512)] >= getReserveAmount[address(stor2[arg1].field_512)]
        else:
            require getsafe[arg1].field_768
            require getsafe[arg1].field_768 * comission / getsafe[arg1].field_768 == comission
            require getsafe[arg1].field_768 * comission / 100 <= getsafe[arg1].field_768
            if not address(getsafe[arg1].field_512):
                require eth.balance(this.address) >= getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100)
                call address(getsafe[arg1].field_256) with:
                   value getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100)
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(getsafe[arg1].field_256), getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require getReserveAmount[address(stor2[arg1].field_512)] + (getsafe[arg1].field_768 * comission / 100) >= getReserveAmount[address(stor2[arg1].field_512)]
            getReserveAmount[address(stor2[arg1].field_512)] += getsafe[arg1].field_768 * comission / 100
        idx = 0
        while idx < sub_1c019a52.length:
            mem[0] = 7
            if address(sub_1c019a52[idx]) != address(getsafe[arg1].field_512):
                idx = idx + 1
                continue 
            require getsafe[arg1].field_768 <= sub_666a7370[address(stor2[arg1].field_512)]
            sub_666a7370[address(stor2[arg1].field_512)] -= getsafe[arg1].field_768
            getsafe[getsafe[arg1].field_0].field_0 = 0
            address(getsafe[getsafe[arg1].field_0].field_256) = 0
            address(getsafe[getsafe[arg1].field_0].field_512) = 0
            getsafe[getsafe[arg1].field_0].field_768 = 0
            getsafe[getsafe[arg1].field_0].field_1024 = 0
            idx = 0
            while idx < sub_11a3311c[address(msg.sender)]:
                mem[0] = sha3(address(msg.sender), 1)
                if sub_11a3311c[address(msg.sender)][idx] != getsafe[arg1].field_0:
                    idx = idx + 1
                    continue 
                require sub_11a3311c[address(msg.sender)] - 1 < sub_11a3311c[address(msg.sender)]
                require idx < sub_11a3311c[address(msg.sender)]
                sub_11a3311c[address(msg.sender)][idx] = sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]]
                sub_11a3311c[address(msg.sender)]--
                if sub_11a3311c[address(msg.sender)] > sub_11a3311c[address(msg.sender)] - 1:
                    idx = sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] - 1
                    while sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
        sub_1c019a52.length++
        address(sub_1c019a52[sub_1c019a52.length]) = address(getsafe[arg1].field_512)
    require getsafe[arg1].field_768 <= sub_666a7370[address(stor2[arg1].field_512)]
    sub_666a7370[address(stor2[arg1].field_512)] -= getsafe[arg1].field_768
    getsafe[getsafe[arg1].field_0].field_0 = 0
    address(getsafe[getsafe[arg1].field_0].field_256) = 0
    address(getsafe[getsafe[arg1].field_0].field_512) = 0
    getsafe[getsafe[arg1].field_0].field_768 = 0
    getsafe[getsafe[arg1].field_0].field_1024 = 0
    idx = 0
    while idx < sub_11a3311c[address(msg.sender)]:
        mem[0] = sha3(address(msg.sender), 1)
        if sub_11a3311c[address(msg.sender)][idx] != getsafe[arg1].field_0:
            idx = idx + 1
            continue 
        require sub_11a3311c[address(msg.sender)] - 1 < sub_11a3311c[address(msg.sender)]
        require idx < sub_11a3311c[address(msg.sender)]
        sub_11a3311c[address(msg.sender)][idx] = sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]]
        sub_11a3311c[address(msg.sender)]--
        if sub_11a3311c[address(msg.sender)] > sub_11a3311c[address(msg.sender)] - 1:
            idx = sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] - 1
            while sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}

function UserRetireHodl(uint256 arg1) {
    require getsafe[arg1].field_0
    require address(getsafe[arg1].field_256) == msg.sender
    require getsafe[arg1].field_0
    if getsafe[arg1].field_1024 < block.timestamp:
        if not address(getsafe[arg1].field_512):
            require eth.balance(this.address) >= getsafe[arg1].field_768
            call address(getsafe[arg1].field_256) with:
               value getsafe[arg1].field_768 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(getsafe[arg1].field_512))
            call address(getsafe[arg1].field_512).0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= getsafe[arg1].field_768
            require ext_code.size(address(getsafe[arg1].field_512))
            call address(getsafe[arg1].field_512).0xa9059cbb with:
                 gas gas_remaining wei
                args address(getsafe[arg1].field_256), getsafe[arg1].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if not getsafe[arg1].field_768:
            require 0 <= getsafe[arg1].field_768
            if not address(getsafe[arg1].field_512):
                require eth.balance(this.address) >= getsafe[arg1].field_768
                call address(getsafe[arg1].field_256) with:
                   value getsafe[arg1].field_768 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= getsafe[arg1].field_768
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(getsafe[arg1].field_256), getsafe[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require getReserveAmount[address(stor2[arg1].field_512)] >= getReserveAmount[address(stor2[arg1].field_512)]
        else:
            require getsafe[arg1].field_768
            require getsafe[arg1].field_768 * comission / getsafe[arg1].field_768 == comission
            require getsafe[arg1].field_768 * comission / 100 <= getsafe[arg1].field_768
            if not address(getsafe[arg1].field_512):
                require eth.balance(this.address) >= getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100)
                call address(getsafe[arg1].field_256) with:
                   value getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100)
                require ext_code.size(address(getsafe[arg1].field_512))
                call address(getsafe[arg1].field_512).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(getsafe[arg1].field_256), getsafe[arg1].field_768 - (getsafe[arg1].field_768 * comission / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            require getReserveAmount[address(stor2[arg1].field_512)] + (getsafe[arg1].field_768 * comission / 100) >= getReserveAmount[address(stor2[arg1].field_512)]
            getReserveAmount[address(stor2[arg1].field_512)] += getsafe[arg1].field_768 * comission / 100
        idx = 0
        while idx < sub_1c019a52.length:
            mem[0] = 7
            if address(sub_1c019a52[idx]) != address(getsafe[arg1].field_512):
                idx = idx + 1
                continue 
            require getsafe[arg1].field_768 <= sub_666a7370[address(stor2[arg1].field_512)]
            sub_666a7370[address(stor2[arg1].field_512)] -= getsafe[arg1].field_768
            getsafe[getsafe[arg1].field_0].field_0 = 0
            address(getsafe[getsafe[arg1].field_0].field_256) = 0
            address(getsafe[getsafe[arg1].field_0].field_512) = 0
            getsafe[getsafe[arg1].field_0].field_768 = 0
            getsafe[getsafe[arg1].field_0].field_1024 = 0
            idx = 0
            while idx < sub_11a3311c[address(msg.sender)]:
                mem[0] = sha3(address(msg.sender), 1)
                if sub_11a3311c[address(msg.sender)][idx] != getsafe[arg1].field_0:
                    idx = idx + 1
                    continue 
                require sub_11a3311c[address(msg.sender)] - 1 < sub_11a3311c[address(msg.sender)]
                require idx < sub_11a3311c[address(msg.sender)]
                sub_11a3311c[address(msg.sender)][idx] = sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]]
                sub_11a3311c[address(msg.sender)]--
                if sub_11a3311c[address(msg.sender)] > sub_11a3311c[address(msg.sender)] - 1:
                    idx = sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] - 1
                    while sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
        sub_1c019a52.length++
        address(sub_1c019a52[sub_1c019a52.length]) = address(getsafe[arg1].field_512)
    require getsafe[arg1].field_768 <= sub_666a7370[address(stor2[arg1].field_512)]
    sub_666a7370[address(stor2[arg1].field_512)] -= getsafe[arg1].field_768
    getsafe[getsafe[arg1].field_0].field_0 = 0
    address(getsafe[getsafe[arg1].field_0].field_256) = 0
    address(getsafe[getsafe[arg1].field_0].field_512) = 0
    getsafe[getsafe[arg1].field_0].field_768 = 0
    getsafe[getsafe[arg1].field_0].field_1024 = 0
    idx = 0
    while idx < sub_11a3311c[address(msg.sender)]:
        mem[0] = sha3(address(msg.sender), 1)
        if sub_11a3311c[address(msg.sender)][idx] != getsafe[arg1].field_0:
            idx = idx + 1
            continue 
        require sub_11a3311c[address(msg.sender)] - 1 < sub_11a3311c[address(msg.sender)]
        require idx < sub_11a3311c[address(msg.sender)]
        sub_11a3311c[address(msg.sender)][idx] = sub_11a3311c[address(msg.sender)][sub_11a3311c[address(msg.sender)]]
        sub_11a3311c[address(msg.sender)]--
        if sub_11a3311c[address(msg.sender)] > sub_11a3311c[address(msg.sender)] - 1:
            idx = sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] - 1
            while sha3(sha3(address(msg.sender), 1)) + sub_11a3311c[address(msg.sender)] > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
}



}
