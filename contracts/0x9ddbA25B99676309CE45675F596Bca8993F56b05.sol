contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor1 = 5 * 10^16
    stor2 = 5 * 10^18
    stor3 = 21
    require not msg.value
    stor0 = msg.sender
    return code.data[95 len 16105]
}



// =====================  Runtime code  =====================


#
#  - hit()
#  - deal()
#  - double()
#  - sub_9aa60e1d(?)
#  - stand()
#  - split()
#
address owner;
uint256 minBet;
uint256 maxBet;
array of struct sub_267a8da0;
mapping of struct sub_a8ea097f;

function sub_0541ec91(?) {
    return bool(sub_267a8da0[address(msg.sender)].field_1536)
}

function sub_267a8da0(?) {
    return sub_267a8da0[address(msg.sender)].field_1280
}

function maxBet() {
    return maxBet
}

function games(address arg1) {
    require sub_267a8da0[arg1].field_1056 <= 4
    return sub_267a8da0[arg1].field_0, 
           sub_267a8da0[arg1].field_256,
           sub_267a8da0[arg1].field_1024,
           sub_267a8da0[arg1].field_1024,
           sub_267a8da0[arg1].field_1040,
           sub_267a8da0[arg1].field_1024,
           sub_267a8da0[arg1].field_1024,
           sub_267a8da0[arg1].field_1024,
           sub_267a8da0[arg1].field_1280,
           bool(sub_267a8da0[arg1].field_1536)
}

function getHouseCard(uint8 arg1) {
    require arg1 >= 0
    require arg1 <= sub_267a8da0[address(msg.sender)].field_512
    require arg1 < sub_267a8da0[address(msg.sender)].field_512
    return houseCard[uint8(arg1)]
}

function getHouseCardsNumber() {
    return sub_267a8da0[address(msg.sender)].field_512
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function sub_a8ea097f(?) {
    require sub_a8ea097f[arg1].field_1056 <= 4
    return sub_a8ea097f[arg1].field_0, 
           sub_a8ea097f[arg1].field_256,
           sub_a8ea097f[arg1].field_1024,
           sub_a8ea097f[arg1].field_1024,
           sub_a8ea097f[arg1].field_1040,
           sub_a8ea097f[arg1].field_1024,
           sub_a8ea097f[arg1].field_1024,
           sub_a8ea097f[arg1].field_1024,
           sub_a8ea097f[arg1].field_1280,
           bool(sub_a8ea097f[arg1].field_1536)
}

function sub_b6d782c2(?) {
    return sub_a8ea097f[address(msg.sender)].field_768
}

function sub_c90a80a7(?) {
    require arg1 >= 0
    require arg1 <= sub_a8ea097f[address(msg.sender)].field_768
    require arg1 < sub_a8ea097f[address(msg.sender)].field_768
    return sub_c90a80a7[uint8(arg1)]
}

function getPlayerCard(uint8 arg1) {
    require arg1 >= 0
    require arg1 <= sub_267a8da0[address(msg.sender)].field_768
    require arg1 < sub_267a8da0[address(msg.sender)].field_768
    return playerCard[uint8(arg1)]
}

function getPlayerCardsNumber() {
    return sub_267a8da0[address(msg.sender)].field_768
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_62d67aec(?) {
    if sub_267a8da0[address(msg.sender)].field_512:
        idx = 960
        s = 0
        while (32 * sub_267a8da0[address(msg.sender)].field_512) + 928 > idx:
            mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if sub_267a8da0[address(msg.sender)].field_768:
        idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 992
        s = 0
        while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 960 > idx:
            mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    require sub_267a8da0[address(msg.sender)].field_1056 <= 4
    require sub_267a8da0[address(msg.sender)].field_0
    return sub_267a8da0[address(msg.sender)].field_256
}

function sub_7ce8154a(?) payable {
    if sub_267a8da0[address(msg.sender)].field_512:
        idx = 512
        s = 0
        while (32 * sub_267a8da0[address(msg.sender)].field_512) + 480 > idx:
            mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if sub_267a8da0[address(msg.sender)].field_768:
        idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 544
        s = 0
        while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 512 > idx:
            mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    require sub_267a8da0[address(msg.sender)].field_1056 <= 4
    require sub_267a8da0[address(msg.sender)].field_0
    require sub_267a8da0[address(msg.sender)].field_1056 <= 4
    require not sub_267a8da0[address(msg.sender)].field_1056
    require sub_267a8da0[address(msg.sender)].field_1536
    require msg.value
    require msg.value <= sub_267a8da0[address(msg.sender)].field_257
    sub_267a8da0[address(msg.sender)].field_1280 = msg.value
}

function sub_4bf8d2d6(?) {
    if not sub_a8ea097f[address(msg.sender)].field_512:
        if not sub_a8ea097f[address(msg.sender)].field_768:
            if sub_a8ea097f[address(msg.sender)].field_1056 <= 4:
                require sub_a8ea097f[address(msg.sender)].field_0
                if sub_a8ea097f[address(msg.sender)].field_1056 <= 4:
                    return sub_a8ea097f[address(msg.sender)].field_1024
        else:
            idx = (32 * sub_a8ea097f[address(msg.sender)].field_512) + 992
            s = 0
            while (32 * sub_a8ea097f[address(msg.sender)].field_512) + (32 * sub_a8ea097f[address(msg.sender)].field_768) + 960 > idx:
                mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            if sub_a8ea097f[address(msg.sender)].field_1056 <= 4:
                require sub_a8ea097f[address(msg.sender)].field_0
                if sub_a8ea097f[address(msg.sender)].field_1056 <= 4:
                    return sub_a8ea097f[address(msg.sender)].field_1056
    else:
        idx = 960
        s = 0
        while (32 * sub_a8ea097f[address(msg.sender)].field_512) + 928 > idx:
            mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        if sub_a8ea097f[address(msg.sender)].field_768:
            idx = (32 * sub_a8ea097f[address(msg.sender)].field_512) + 992
            s = 0
            while (32 * sub_a8ea097f[address(msg.sender)].field_512) + (32 * sub_a8ea097f[address(msg.sender)].field_768) + 960 > idx:
                mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        if sub_a8ea097f[address(msg.sender)].field_1056 <= 4:
            require sub_a8ea097f[address(msg.sender)].field_0
            if sub_a8ea097f[address(msg.sender)].field_1056 <= 4:
                return sub_a8ea097f[address(msg.sender)].field_1056
    revert
}

function getGameState() {
    if not sub_267a8da0[address(msg.sender)].field_512:
        if not sub_267a8da0[address(msg.sender)].field_768:
            if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                require sub_267a8da0[address(msg.sender)].field_0
                if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                    return sub_267a8da0[address(msg.sender)].field_1024
        else:
            idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 992
            s = 0
            while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 960 > idx:
                mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                require sub_267a8da0[address(msg.sender)].field_0
                if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                    return sub_267a8da0[address(msg.sender)].field_1056
    else:
        if (32 * sub_267a8da0[address(msg.sender)].field_512) + 32 > 64:
            idx = 992
            s = 1
            while (32 * sub_267a8da0[address(msg.sender)].field_512) + 928 > idx:
                mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            if not sub_267a8da0[address(msg.sender)].field_768:
                if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                    require sub_267a8da0[address(msg.sender)].field_0
                    if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                        return sub_267a8da0[address(msg.sender)].field_1024
            else:
                idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 992
                s = 0
                while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 960 > idx:
                    mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                    require sub_267a8da0[address(msg.sender)].field_0
                    if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                        return sub_267a8da0[address(msg.sender)].field_1056
        else:
            if sub_267a8da0[address(msg.sender)].field_768:
                if (32 * sub_267a8da0[address(msg.sender)].field_768) + 32 > 64:
                    idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 1024
                    s = 1
                    while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 960 > idx:
                        mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
            if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                require sub_267a8da0[address(msg.sender)].field_0
                if sub_267a8da0[address(msg.sender)].field_1056 <= 4:
                    return sub_267a8da0[address(msg.sender)].field_1024
    revert
}

function sub_3cdc685e(?) {
    if sub_267a8da0[address(msg.sender)].field_512:
        idx = 512
        s = 0
        while (32 * sub_267a8da0[address(msg.sender)].field_512) + 480 > idx:
            mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    if sub_267a8da0[address(msg.sender)].field_768:
        mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544] = sub_267a8da0[address(msg.sender)][3].field_0
        idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 544
        s = 0
        while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 512 > idx:
            mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
    require sub_267a8da0[address(msg.sender)].field_1056 <= 4
    require sub_267a8da0[address(msg.sender)].field_1056 <= 4
    if sub_267a8da0[address(msg.sender)].field_1056:
        return not sub_267a8da0[address(msg.sender)].field_1056
    if sub_267a8da0[address(msg.sender)].field_768 != 2:
        return (2 == sub_267a8da0[address(msg.sender)].field_768)
    require 1 < sub_267a8da0[address(msg.sender)].field_768
    require 0 < sub_267a8da0[address(msg.sender)].field_768
    if not Mask(6, 2, mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 576]):
        if not Mask(6, 2, mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]):
            return 1
        if 11 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
            return 1
        if 12 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
            return 1
        mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544] = uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4 == 10
    else:
        if 11 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 576]) / 4:
            if not Mask(6, 2, mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]):
                return 1
            if 11 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
                return 1
            if 12 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
                return 1
            mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544] = uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4 == 10
        else:
            if 12 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 576]) / 4:
                if not Mask(6, 2, mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]):
                    return 1
                if 11 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
                    return 1
                if 12 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
                    return 1
                mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544] = uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4 == 10
            else:
                if not Mask(6, 2, mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]):
                    mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544] = 10 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 576]) / 4
                else:
                    if 11 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
                        mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544] = 10 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 576]) / 4
                    else:
                        if 12 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4:
                            mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544] = 10 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 576]) / 4
                        else:
                            mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544] = uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 544]) / 4 == uint8(mem[(32 * sub_267a8da0[address(msg.sender)].field_512) + 576]) / 4
    return memory
      from (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 544
       len 32
}

function sub_0062a7fa(?) {
    if not sub_267a8da0[address(msg.sender)].field_512:
        if sub_267a8da0[address(msg.sender)].field_768:
            idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 992
            s = 0
            while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 960 > idx:
                mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        require sub_267a8da0[address(msg.sender)].field_1056 <= 4
        require sub_267a8da0[address(msg.sender)].field_1056 <= 4
        if sub_267a8da0[address(msg.sender)].field_1056 != 4:
            require sub_267a8da0[address(msg.sender)].field_1056 <= 4
            if sub_267a8da0[address(msg.sender)].field_1056:
                return not sub_267a8da0[address(msg.sender)].field_1056
            if sub_267a8da0[address(msg.sender)].field_1024 <= 8:
                return (sub_267a8da0[address(msg.sender)].field_1024 > 8)
            if sub_267a8da0[address(msg.sender)].field_1024 >= 12:
                return (sub_267a8da0[address(msg.sender)].field_1024 < 12)
            return (2 == sub_267a8da0[address(msg.sender)].field_768)
        if sub_a8ea097f[address(msg.sender)].field_512:
            idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 1408
            s = 0
            while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + 1376 > idx:
                mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
        if sub_a8ea097f[address(msg.sender)].field_768:
            idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + 1440
            s = 0
            while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + (32 * sub_a8ea097f[address(msg.sender)].field_768) + 1408 > idx:
                mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
    else:
        idx = 960
        s = 0
        while (32 * sub_267a8da0[address(msg.sender)].field_512) + 928 > idx:
            mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
            idx = idx + 32
            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
            continue 
        if not sub_267a8da0[address(msg.sender)].field_768:
            require sub_267a8da0[address(msg.sender)].field_1056 <= 4
            require sub_267a8da0[address(msg.sender)].field_1056 <= 4
            if sub_267a8da0[address(msg.sender)].field_1056 != 4:
                require sub_267a8da0[address(msg.sender)].field_1056 <= 4
                if sub_267a8da0[address(msg.sender)].field_1056:
                    return not sub_267a8da0[address(msg.sender)].field_1056
                if sub_267a8da0[address(msg.sender)].field_1024 <= 8:
                    return (sub_267a8da0[address(msg.sender)].field_1024 > 8)
                if sub_267a8da0[address(msg.sender)].field_1024 >= 12:
                    return (sub_267a8da0[address(msg.sender)].field_1024 < 12)
                return (2 == sub_267a8da0[address(msg.sender)].field_768)
            if sub_a8ea097f[address(msg.sender)].field_512:
                idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 1408
                s = 0
                while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + 1376 > idx:
                    mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
            if sub_a8ea097f[address(msg.sender)].field_768:
                idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + 1440
                s = 0
                while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + (32 * sub_a8ea097f[address(msg.sender)].field_768) + 1408 > idx:
                    mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
        else:
            idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + 992
            s = 0
            while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 960 > idx:
                mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor4', 4)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                idx = idx + 32
                s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                continue 
            require sub_267a8da0[address(msg.sender)].field_1056 <= 4
            require sub_267a8da0[address(msg.sender)].field_1056 <= 4
            if sub_267a8da0[address(msg.sender)].field_1056 != 4:
                require sub_267a8da0[address(msg.sender)].field_1056 <= 4
                if sub_267a8da0[address(msg.sender)].field_1056:
                    return not sub_267a8da0[address(msg.sender)].field_1056
                if sub_267a8da0[address(msg.sender)].field_1024 <= 8:
                    return (sub_267a8da0[address(msg.sender)].field_1024 > 8)
                if sub_267a8da0[address(msg.sender)].field_1024 >= 12:
                    return (sub_267a8da0[address(msg.sender)].field_1024 < 12)
                return (2 == sub_267a8da0[address(msg.sender)].field_768)
            mem[64] = (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + 1408
            if not sub_a8ea097f[address(msg.sender)].field_512:
                if sub_a8ea097f[address(msg.sender)].field_768:
                    idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + 1440
                    s = 0
                    while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + (32 * sub_a8ea097f[address(msg.sender)].field_768) + 1408 > idx:
                        mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
            else:
                idx = (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + 1408
                s = 0
                while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + 1376 > idx:
                    mem[idx + 32] = stor('array', 2, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                if sub_a8ea097f[address(msg.sender)].field_768:
                    idx = mem[64] + 32
                    s = 0
                    while (32 * sub_267a8da0[address(msg.sender)].field_512) + (32 * sub_267a8da0[address(msg.sender)].field_768) + (32 * sub_a8ea097f[address(msg.sender)].field_512) + (32 * sub_a8ea097f[address(msg.sender)].field_768) + 1408 > idx:
                        mem[idx + 32] = stor('array', 3, ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
    require sub_a8ea097f[address(msg.sender)].field_1056 <= 4
    require sub_a8ea097f[address(msg.sender)].field_1056 <= 4
    if sub_a8ea097f[address(msg.sender)].field_1056:
        return not sub_a8ea097f[address(msg.sender)].field_1056
    if sub_a8ea097f[address(msg.sender)].field_1024 <= 8:
        return (sub_a8ea097f[address(msg.sender)].field_1024 > 8)
    if sub_a8ea097f[address(msg.sender)].field_1024 >= 12:
        return (sub_a8ea097f[address(msg.sender)].field_1024 < 12)
    return (2 == sub_a8ea097f[address(msg.sender)].field_768)
}



}
