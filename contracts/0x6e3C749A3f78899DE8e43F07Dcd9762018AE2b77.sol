contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor1 = 0x5d1ec7558c8d1c40406913ab5dbc0abf1c96ba42
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 10^18
    require not msg.value
    stor0 = msg.sender
    require code.data[8310 len 20]
    require code.data[8342 len 20]
    require code.data[8374 len 20]
    if code.data[8438 len 20]:
        require code.data[8438 len 20]
        require code.data[8458 len 32] > 0
        stor5 = code.data[8406 len 20]
        stor0 = code.data[8438 len 20]
    else:
        require msg.sender
        require code.data[8458 len 32] > 0
        stor5 = code.data[8406 len 20]
        stor0 = msg.sender
    stor9 = code.data[8458 len 32]
    stor10 = code.data[8458 len 32]
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args stor0
    require ext_call.success
    require ext_call.return_data[0] >= stor9
    stor2 = address(code.data[8298 len 32])
    stor3 = address(code.data[8330 len 32])
    stor4 = address(code.data[8362 len 32])
    require ext_code.size(stor4)
    call stor4.purchaserCount() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = ext_call.return_data[0]
    require ext_code.size(stor4)
    call stor4.0x518ab2a8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor8 = ext_call.return_data[0]
    return code.data[1584 len 6714]
}



// =====================  Runtime code  =====================


const sub_576dede4(?) = 0x904f1303224ebb8c189af640624feb30513c4a58

const sub_678e9bac(?) = 0x24b2f1aeced4b34133152bb20cfd6a206a0ea33c

const NAME = Array(len=36, data='FintruX leftover tokens distribu', 'tion', Mask(32, -256, 'FintruX leftover tokens distribu', 'tion') << 256)

const VERSION = '1.0'


address owner;
address masterOwner;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 purchaserCount;
uint256 sub_5c7bba0a;
uint256 tokensSold;
uint256 sub_67a80efd;
uint256 tokensRemaining;
uint256 sub_9a4f7ee4;
mapping of uint256 sub_53a1ebe8;
mapping of uint8 stor13;
mapping of uint8 stor14;
mapping of uint256 tokensHeld;

function purchaserCount() {
    return purchaserCount
}

function sub_1d4bb653(?) {
    return bool(stor13[arg1])
}

function tokensSold() {
    return tokensSold
}

function sub_53a1ebe8(?) {
    return sub_53a1ebe8[arg1]
}

function sub_5c7bba0a(?) {
    return sub_5c7bba0a
}

function sub_626a7d4c(?) {
    return bool(stor14[arg1])
}

function sub_67a80efd(?) {
    return sub_67a80efd
}

function tokensHeld(address arg1) {
    return tokensHeld[arg1]
}

function owner() {
    return owner
}

function sub_9a4f7ee4(?) {
    return sub_9a4f7ee4
}

function tokensRemaining() {
    return tokensRemaining
}

function masterOwner() {
    return masterOwner
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function transferOwnership(address arg1) {
    require arg1
    require masterOwner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_ac3df1da(?) {
    require msg.sender == owner
    require stor5
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require not stor14[address(arg1)]
    stor14[address(arg1)] = 1
    sub_5c7bba0a++
    if sub_53a1ebe8[address(arg1)] > 0:
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), sub_53a1ebe8[address(arg1)]
        require ext_call.success
        emit 0x748c4473: sub_53a1ebe8[address(arg1)], arg1
}

function sub_11d89a8e(?) {
    require msg.sender == owner
    require ext_code.size(stor4)
    call stor4.0x8d4e4083 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require not stor13[address(arg1)]
    require stor5
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor3)
    call stor3.tokenAmountOf(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.tokenAmountOf(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.tokenAmountOf(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    tokensHeld[address(arg1)] = arg2
    require tokensSold
    if tokensRemaining >= (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold:
        tokensRemaining -= (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
        if arg1 == 0x24b2f1aeced4b34133152bb20cfd6a206a0ea33c:
            if (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold >= sub_9a4f7ee4:
                stor13[address(arg1)] = 1
                sub_53a1ebe8[address(arg1)] = (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
            else:
                sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                stor13[address(arg1)] = 1
                sub_53a1ebe8[address(arg1)] = 0
        else:
            if arg2 >= 3 * ext_call.return_data[0]:
                if (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold >= sub_9a4f7ee4:
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                else:
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = 0
            else:
                require 3 * ext_call.return_data[0]
                if ((ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - ((ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (arg2 * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0]) >= sub_9a4f7ee4:
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (arg2 * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0]
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = ((ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - ((ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (arg2 * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0])
                else:
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] = sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] + ((ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - ((ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (arg2 * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0])
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (arg2 * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0]
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = 0
    else:
        tokensRemaining = 0
        if arg1 == 0x24b2f1aeced4b34133152bb20cfd6a206a0ea33c:
            if tokensRemaining >= sub_9a4f7ee4:
                stor13[address(arg1)] = 1
                sub_53a1ebe8[address(arg1)] = tokensRemaining
            else:
                sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += tokensRemaining
                stor13[address(arg1)] = 1
                sub_53a1ebe8[address(arg1)] = 0
        else:
            if arg2 >= 3 * ext_call.return_data[0]:
                if tokensRemaining >= sub_9a4f7ee4:
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = tokensRemaining
                else:
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += tokensRemaining
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = 0
            else:
                require 3 * ext_call.return_data[0]
                if tokensRemaining - ((ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (arg2 * tokensRemaining) / 3 * ext_call.return_data[0]) >= sub_9a4f7ee4:
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (arg2 * tokensRemaining) / 3 * ext_call.return_data[0]
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = tokensRemaining - ((ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (arg2 * tokensRemaining) / 3 * ext_call.return_data[0])
                else:
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] = sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] + tokensRemaining - ((ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (arg2 * tokensRemaining) / 3 * ext_call.return_data[0])
                    sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (arg2 * tokensRemaining) / 3 * ext_call.return_data[0]
                    stor13[address(arg1)] = 1
                    sub_53a1ebe8[address(arg1)] = 0
}

function sub_95cec4e5(?) {
    require msg.sender == owner
    require ('cd', 4).length == ('cd', 36).length
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 13
        if not stor13[address(cd[((32 * idx) + cd[4] + 36)])]:
            require idx < ('cd', 36).length
            require msg.sender == owner
            require ext_code.size(stor4)
            call stor4.0x8d4e4083 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0]
            require not stor13[address(cd[((32 * idx) + cd[4] + 36)])]
            require stor5
            require ext_code.size(stor5)
            call stor5.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] > 0
            require ext_code.size(stor3)
            call stor3.tokenAmountOf(address arg1) with:
                 gas gas_remaining - 710 wei
                args address(cd[((32 * idx) + cd[4] + 36)])
            require ext_call.success
            require ext_code.size(stor2)
            call stor2.tokenAmountOf(address arg1) with:
                 gas gas_remaining - 710 wei
                args address(cd[((32 * idx) + cd[4] + 36)])
            require ext_call.success
            mem[128] = 0
            mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor4)
            call stor4.tokenAmountOf(address arg1) with:
                 gas gas_remaining - 710 wei
                args address(cd[((32 * idx) + cd[4] + 36)])
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            tokensHeld[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
            require tokensSold
            if tokensRemaining >= (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold:
                tokensRemaining -= (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                if address(cd[((32 * idx) + cd[4] + 36)]) == 0x24b2f1aeced4b34133152bb20cfd6a206a0ea33c:
                    if (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold >= sub_9a4f7ee4:
                        stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 12
                        sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                    else:
                        sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                        stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 12
                        sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                else:
                    if cd[((32 * idx) + cd[36] + 36)] >= 3 * ext_call.return_data[0]:
                        if (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold >= sub_9a4f7ee4:
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                        else:
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                    else:
                        require 3 * ext_call.return_data[0]
                        if ((ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - ((ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (cd[((32 * idx) + cd[36] + 36)] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0]) >= sub_9a4f7ee4:
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (cd[((32 * idx) + cd[36] + 36)] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0]
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = ((ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - ((ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (cd[((32 * idx) + cd[36] + 36)] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0])
                        else:
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] = sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] + ((ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - ((ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (cd[((32 * idx) + cd[36] + 36)] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0])
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) + (ext_call.return_data[0] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) - (cd[((32 * idx) + cd[36] + 36)] * (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) + (ext_call.return_data[0] * sub_67a80efd) / tokensSold) / 3 * ext_call.return_data[0]
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = 0
            else:
                tokensRemaining = 0
                if address(cd[((32 * idx) + cd[4] + 36)]) == 0x24b2f1aeced4b34133152bb20cfd6a206a0ea33c:
                    if tokensRemaining >= sub_9a4f7ee4:
                        stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 12
                        sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = tokensRemaining
                    else:
                        sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += tokensRemaining
                        stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[32] = 12
                        sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                else:
                    if cd[((32 * idx) + cd[36] + 36)] >= 3 * ext_call.return_data[0]:
                        if tokensRemaining >= sub_9a4f7ee4:
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = tokensRemaining
                        else:
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += tokensRemaining
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = 0
                    else:
                        require 3 * ext_call.return_data[0]
                        if tokensRemaining - ((ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (cd[((32 * idx) + cd[36] + 36)] * tokensRemaining) / 3 * ext_call.return_data[0]) >= sub_9a4f7ee4:
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (cd[((32 * idx) + cd[36] + 36)] * tokensRemaining) / 3 * ext_call.return_data[0]
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = tokensRemaining - ((ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (cd[((32 * idx) + cd[36] + 36)] * tokensRemaining) / 3 * ext_call.return_data[0])
                        else:
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] = sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] + tokensRemaining - ((ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (cd[((32 * idx) + cd[36] + 36)] * tokensRemaining) / 3 * ext_call.return_data[0])
                            sub_53a1ebe8[0x904f1303224ebb8c189af640624feb30513c4a58] += (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) + (ext_call.return_data[0] * tokensRemaining) - (cd[((32 * idx) + cd[36] + 36)] * tokensRemaining) / 3 * ext_call.return_data[0]
                            stor13[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 12
                            sub_53a1ebe8[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        s = address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    return idx
}



}
