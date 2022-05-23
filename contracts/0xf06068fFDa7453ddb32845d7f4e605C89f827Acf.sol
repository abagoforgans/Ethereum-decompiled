contract main {




// =====================  Runtime code  =====================


#
#  - sub_76279ccb(?)
#  - sub_b3cdcc03(?)
#
const sub_c9e32b86(?) = 30


address owner1;
address owner2;
array of struct stor2;
array of uint256 stor3;
uint256 feeRate;
uint256 sub_b9fdcf5c;
uint256 sub_f069f88c;
uint256 sub_0f2eb511;
uint256 sub_109324d0;
address feeAddr;
address charityAddr;
uint256 sub_b3b95e30;
uint256 sub_d9a7291c;
uint256 investmentLimit;
uint256 sub_fcba933d;
uint256 sub_2430af28;
uint8 stor16;
uint8 stor16; offset 8
uint8 stor16; offset 16
uint256 startTime;
address stor18;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function active() {
    return bool(uint8(stor16.field_16))
}

function sub_0f2eb511(?) {
    return sub_0f2eb511
}

function sub_109324d0(?) {
    return sub_109324d0
}

function sub_2430af28(?) {
    return sub_2430af28
}

function feeAddr() {
    return feeAddr
}

function charityAddr() {
    return charityAddr
}

function owner2() {
    return owner2
}

function owner1() {
    return owner1
}

function startTime() {
    return startTime
}

function feeRate() {
    return feeRate
}

function sub_b3b95e30(?) {
    return sub_b3b95e30
}

function sub_b9fdcf5c(?) {
    return sub_b9fdcf5c
}

function investmentLimit() {
    return investmentLimit
}

function sub_d9a7291c(?) {
    return sub_d9a7291c
}

function sub_f069f88c(?) {
    return sub_f069f88c
}

function sub_f079914f(?) {
    return bool(uint8(stor16.field_8))
}

function distributed() {
    return bool(uint8(stor16.field_0))
}

function sub_fcba933d(?) {
    return sub_fcba933d
}

function _fallback() payable {
    revert
}

function getCurrentState() {
    return startTime, address(stor18), stor19, stor20, block.timestamp, stor3.length, sub_109324d0
}

function sub_287fac96(?) {
    if not uint8(stor16.field_8):
        revert with 0, 'test only'
    if owner1 != msg.sender:
        require msg.sender == owner2
    sub_fcba933d = arg1
    return 1
}

function sub_7ff1fefb(?) {
    if not uint8(stor16.field_8):
        revert with 0, 'test only'
    if owner1 != msg.sender:
        require msg.sender == owner2
    sub_109324d0 = arg1
    return 1
}

function sub_d795a3f5(?) {
    if not uint8(stor16.field_8):
        revert with 0, 'test only'
    if owner1 != msg.sender:
        require msg.sender == owner2
    sub_0f2eb511 = arg1
    return 1
}

function setLimitTime(uint256 arg1) {
    if not uint8(stor16.field_8):
        revert with 0, 'test only'
    if owner1 != msg.sender:
        require msg.sender == owner2
    sub_b3b95e30 = arg1
    return 1
}

function closeGame() {
    if owner1 != msg.sender:
        require msg.sender == owner2
    if not uint8(stor16.field_16):
        revert with 0, 'only activated'
    if sub_109324d0:
        revert with 0, 'game have been closed'
    sub_109324d0 = block.timestamp
    emit 0x827e8bff: block.timestamp
    return 1
}

function activate() {
    if owner1 != msg.sender:
        require msg.sender == owner2
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    require not uint8(stor16.field_16)
    uint8(stor16.field_16) = 1
    sub_b3b95e30 = block.timestamp + sub_d9a7291c
    startTime = block.timestamp
    return 1
}

function distribute(uint256 arg1, uint256 arg2) {
    if owner1 != msg.sender:
        require msg.sender == owner2
    if not uint8(stor16.field_16):
        revert with 0, 'only activated'
    require sub_109324d0
    require not uint8(stor16.field_0)
    uint8(stor16.field_0) = 1
    if address(stor18):
        stor2[address(stor18)].field_256 = arg1
    call charityAddr with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7e17553e: arg1, arg2, block.timestamp, address(stor18), charityAddr
    return 1
}

function sub_792dc19f(?) {
    if owner1 != msg.sender:
        require msg.sender == owner2
    if not uint8(stor16.field_16):
        revert with 0, 'only activated'
    if not sub_109324d0:
        revert with 0, 'game is running'
    require sub_109324d0 <= block.timestamp
    if block.timestamp - sub_109324d0 < sub_2430af28:
        revert with 0, 'cannot draw left right now'
    if not uint8(stor16.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot draw left before the action of distribution'
    if arg2:
        if arg1:
            call arg1 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x2c41df98: arg2, block.timestamp, arg1
        else:
            call msg.sender with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x2c41df98: arg2, block.timestamp, msg.sender
    else:
        if arg1:
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x2c41df98: eth.balance(this.address), block.timestamp, arg1
        else:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x2c41df98: eth.balance(this.address), block.timestamp, msg.sender
    return 1
}

function sub_259ec12d(?) {
    if stor2[address(arg1)].field_0:
        mem[128 len 32 * stor2[address(arg1)].field_0] = code.data[9620 len 32 * stor2[address(arg1)].field_0]
    mem[(32 * stor2[address(arg1)].field_0) + 128] = stor2[address(arg1)].field_0
    if stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 160 len 32 * stor2[address(arg1)].field_0] = code.data[9620 len 32 * stor2[address(arg1)].field_0]
    idx = 0
    while idx < stor2[address(arg1)].field_0:
        require idx < stor2[address(arg1)].field_0
        require idx < stor2[address(arg1)].field_0
        mem[(32 * idx) + 128] = stor2[address(arg1)][idx].field_0
        require idx < stor2[address(arg1)].field_0
        require idx < mem[(32 * stor2[address(arg1)].field_0) + 128]
        mem[(32 * stor2[address(arg1)].field_0) + (32 * idx) + 160] = stor2[address(arg1)][idx].field_256
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    mem[(64 * stor2[address(arg1)].field_0) + 224] = stor2[address(arg1)].field_768
    mem[(64 * stor2[address(arg1)].field_0) + 256] = stor2[address(arg1)].field_512
    mem[(64 * stor2[address(arg1)].field_0) + 288] = stor2[address(arg1)].field_256
    if not sub_109324d0:
        mem[(64 * stor2[address(arg1)].field_0) + 320] = block.timestamp
    else:
        mem[(64 * stor2[address(arg1)].field_0) + 320] = sub_109324d0
    mem[(64 * stor2[address(arg1)].field_0) + 160] = 192
    mem[(64 * stor2[address(arg1)].field_0) + 352] = stor2[address(arg1)].field_0
    mem[(64 * stor2[address(arg1)].field_0) + 384 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
    mem[(64 * stor2[address(arg1)].field_0) + 192] = (32 * stor2[address(arg1)].field_0) + 224
    mem[(98 * stor2[address(arg1)].field_0) + 384] = mem[(32 * stor2[address(arg1)].field_0) + 128]
    mem[(98 * stor2[address(arg1)].field_0) + 416 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])] = mem[(32 * stor2[address(arg1)].field_0) + 160 len floor32(mem[(32 * stor2[address(arg1)].field_0) + 128])]
    return memory
      from (64 * stor2[address(arg1)].field_0) + 160
       len (32 * mem[(32 * stor2[address(arg1)].field_0) + 128]) + (161 * stor2[address(arg1)].field_0) + 256
}

function sub_72d99562(?) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not uint8(stor16.field_16):
        revert with 0, 'only activated'
    require arg1 >= 10^15
    require not sub_109324d0
    require stor2[msg.sender].field_0 > 0
    require 30 > stor2[msg.sender].field_0
    if not sub_109324d0:
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < stor2[address(msg.sender)].field_0:
            require idx < stor2[address(msg.sender)].field_0
            require sub_f069f88c
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_256 <= block.timestamp
            require sub_0f2eb511
            if not stor2[address(msg.sender)][idx].field_0 / sub_f069f88c:
                require idx < stor2[address(msg.sender)].field_0
                if stor2[address(msg.sender)][idx].field_0:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            else:
                require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c / stor2[address(msg.sender)][idx].field_0 / sub_f069f88c == block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                require idx < stor2[address(msg.sender)].field_0
                if not stor2[address(msg.sender)][idx].field_0:
                    require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                else:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    if block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0:
                        require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_0 + s >= s
            mem[0] = msg.sender
            mem[32] = 2
            s = block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
            s = stor2[address(msg.sender)][idx].field_0 / sub_f069f88c
            idx = idx + 1
            s = stor2[address(msg.sender)][idx].field_0 + s
            continue 
    else:
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < stor2[address(msg.sender)].field_0:
            require idx < stor2[address(msg.sender)].field_0
            require sub_f069f88c
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_256 <= sub_109324d0
            require sub_0f2eb511
            if not stor2[address(msg.sender)][idx].field_0 / sub_f069f88c:
                require idx < stor2[address(msg.sender)].field_0
                if stor2[address(msg.sender)][idx].field_0:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            else:
                require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c / stor2[address(msg.sender)][idx].field_0 / sub_f069f88c == sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                require idx < stor2[address(msg.sender)].field_0
                if not stor2[address(msg.sender)][idx].field_0:
                    require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                else:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    if sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0:
                        require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_0 + s >= s
            mem[0] = msg.sender
            mem[32] = 2
            s = sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
            s = stor2[address(msg.sender)][idx].field_0 / sub_f069f88c
            idx = idx + 1
            s = stor2[address(msg.sender)][idx].field_0 + s
            continue 
    require stor2[address(msg.sender)].field_512 >= 0
    if stor2[address(msg.sender)].field_512 <= 0:
        require stor2[address(msg.sender)].field_256 + stor2[address(msg.sender)].field_512 >= stor2[address(msg.sender)].field_512
        require arg1 + stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_768
        require stor2[address(msg.sender)].field_256 + stor2[address(msg.sender)].field_512 >= arg1 + stor2[address(msg.sender)].field_768
    else:
        require stor2[address(msg.sender)].field_256 >= 0
        require arg1 + stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_768
        require stor2[address(msg.sender)].field_256 >= arg1 + stor2[address(msg.sender)].field_768
    if block.timestamp <= sub_b3b95e30:
        require arg1 + s >= s
        require arg1 + s <= investmentLimit
    require arg1 + stor2[msg.sender].field_768 >= stor2[msg.sender].field_768
    stor2[msg.sender].field_768 += arg1
    stor2[msg.sender].field_0++
    stor2[msg.sender][stor2[msg.sender].field_0].field_0 = arg1
    stor2[msg.sender][stor2[msg.sender].field_0].field_256 = block.timestamp
    emit Reinvestment(arg1, block.timestamp, msg.sender);
    return 1
}

function withdrawEther(uint256 arg1) {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not uint8(stor16.field_16):
        revert with 0, 'only activated'
    if sub_109324d0:
        require sub_109324d0 <= block.timestamp
        require block.timestamp - sub_109324d0 < sub_2430af28
    if not sub_109324d0:
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < stor2[address(msg.sender)].field_0:
            require idx < stor2[address(msg.sender)].field_0
            require sub_f069f88c
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_256 <= block.timestamp
            require sub_0f2eb511
            if not stor2[address(msg.sender)][idx].field_0 / sub_f069f88c:
                require idx < stor2[address(msg.sender)].field_0
                if stor2[address(msg.sender)][idx].field_0:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            else:
                require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c / stor2[address(msg.sender)][idx].field_0 / sub_f069f88c == block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                require idx < stor2[address(msg.sender)].field_0
                if not stor2[address(msg.sender)][idx].field_0:
                    require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                else:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    if block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0:
                        require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_0 + s >= s
            mem[0] = msg.sender
            mem[32] = 2
            s = block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
            s = stor2[address(msg.sender)][idx].field_0 / sub_f069f88c
            idx = idx + 1
            s = stor2[address(msg.sender)][idx].field_0 + s
            continue 
    else:
        s = 0
        s = 0
        idx = 0
        s = 0
        while idx < stor2[address(msg.sender)].field_0:
            require idx < stor2[address(msg.sender)].field_0
            require sub_f069f88c
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_256 <= sub_109324d0
            require sub_0f2eb511
            if not stor2[address(msg.sender)][idx].field_0 / sub_f069f88c:
                require idx < stor2[address(msg.sender)].field_0
                if stor2[address(msg.sender)][idx].field_0:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            else:
                require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c / stor2[address(msg.sender)][idx].field_0 / sub_f069f88c == sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                require idx < stor2[address(msg.sender)].field_0
                if not stor2[address(msg.sender)][idx].field_0:
                    require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                else:
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                    if sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0:
                        require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                    require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
            require idx < stor2[address(msg.sender)].field_0
            require stor2[address(msg.sender)][idx].field_0 + s >= s
            mem[0] = msg.sender
            mem[32] = 2
            s = sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
            s = stor2[address(msg.sender)][idx].field_0 / sub_f069f88c
            idx = idx + 1
            s = stor2[address(msg.sender)][idx].field_0 + s
            continue 
    require stor2[address(msg.sender)].field_512 >= 0
    if stor2[address(msg.sender)].field_512 <= 0:
        require stor2[address(msg.sender)].field_256 + stor2[address(msg.sender)].field_512 >= stor2[address(msg.sender)].field_512
        require arg1 + stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_768
        require stor2[address(msg.sender)].field_256 + stor2[address(msg.sender)].field_512 >= arg1 + stor2[address(msg.sender)].field_768
    else:
        require stor2[address(msg.sender)].field_256 >= 0
        require arg1 + stor2[address(msg.sender)].field_768 >= stor2[address(msg.sender)].field_768
        require stor2[address(msg.sender)].field_256 >= arg1 + stor2[address(msg.sender)].field_768
    require arg1 + stor2[msg.sender].field_768 >= stor2[msg.sender].field_768
    stor2[msg.sender].field_768 += arg1
    if not arg1:
        call feeAddr with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 0 <= arg1
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xf2a99c36: arg1, 0, block.timestamp, msg.sender
    else:
        require feeRate * arg1 / arg1 == feeRate
        call feeAddr with:
           value feeRate * arg1 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require feeRate * arg1 / 100 <= arg1
        call msg.sender with:
           value arg1 - (feeRate * arg1 / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xf2a99c36: arg1, feeRate * arg1 / 100, block.timestamp, msg.sender
    return 1
}

function sub_2f2a38d2(?) {
    if arg2:
        if not sub_109324d0:
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require sub_f069f88c
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_256 <= arg2
                require sub_0f2eb511
                if not stor2[address(arg1)][idx].field_0 / sub_f069f88c:
                    require idx < stor2[address(arg1)].field_0
                    if stor2[address(arg1)][idx].field_0:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                else:
                    require arg2 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c / stor2[address(arg1)][idx].field_0 / sub_f069f88c == arg2 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                    require idx < stor2[address(arg1)].field_0
                    if not stor2[address(arg1)][idx].field_0:
                        require arg2 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                    else:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        if arg2 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(arg1)][idx].field_0:
                            require arg2 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_0 + s >= s
                mem[0] = arg1
                mem[32] = 2
                s = arg2 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                s = stor2[address(arg1)][idx].field_0 / sub_f069f88c
                idx = idx + 1
                s = stor2[address(arg1)][idx].field_0 + s
                continue 
        else:
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require sub_f069f88c
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_256 <= sub_109324d0
                require sub_0f2eb511
                if not stor2[address(arg1)][idx].field_0 / sub_f069f88c:
                    require idx < stor2[address(arg1)].field_0
                    if stor2[address(arg1)][idx].field_0:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                else:
                    require sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c / stor2[address(arg1)][idx].field_0 / sub_f069f88c == sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                    require idx < stor2[address(arg1)].field_0
                    if not stor2[address(arg1)][idx].field_0:
                        require sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                    else:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        if sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(arg1)][idx].field_0:
                            require sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_0 + s >= s
                mem[0] = arg1
                mem[32] = 2
                s = sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                s = stor2[address(arg1)][idx].field_0 / sub_f069f88c
                idx = idx + 1
                s = stor2[address(arg1)][idx].field_0 + s
                continue 
    else:
        if not sub_109324d0:
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require sub_f069f88c
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_256 <= block.timestamp
                require sub_0f2eb511
                if not stor2[address(arg1)][idx].field_0 / sub_f069f88c:
                    require idx < stor2[address(arg1)].field_0
                    if stor2[address(arg1)][idx].field_0:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                else:
                    require block.timestamp - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c / stor2[address(arg1)][idx].field_0 / sub_f069f88c == block.timestamp - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                    require idx < stor2[address(arg1)].field_0
                    if not stor2[address(arg1)][idx].field_0:
                        require block.timestamp - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                    else:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        if block.timestamp - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(arg1)][idx].field_0:
                            require block.timestamp - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_0 + s >= s
                mem[0] = arg1
                mem[32] = 2
                s = block.timestamp - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                s = stor2[address(arg1)][idx].field_0 / sub_f069f88c
                idx = idx + 1
                s = stor2[address(arg1)][idx].field_0 + s
                continue 
        else:
            s = 0
            s = 0
            idx = 0
            s = 0
            while idx < stor2[address(arg1)].field_0:
                require idx < stor2[address(arg1)].field_0
                require sub_f069f88c
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_256 <= sub_109324d0
                require sub_0f2eb511
                if not stor2[address(arg1)][idx].field_0 / sub_f069f88c:
                    require idx < stor2[address(arg1)].field_0
                    if stor2[address(arg1)][idx].field_0:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                else:
                    require sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c / stor2[address(arg1)][idx].field_0 / sub_f069f88c == sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                    require idx < stor2[address(arg1)].field_0
                    if not stor2[address(arg1)][idx].field_0:
                        require sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                    else:
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 / stor2[address(arg1)][idx].field_0 == sub_b9fdcf5c
                        if sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(arg1)][idx].field_0:
                            require sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511 * stor2[address(arg1)][idx].field_0 / sub_f069f88c >= 0
                        require sub_b9fdcf5c * stor2[address(arg1)][idx].field_0 >= 0
                require idx < stor2[address(arg1)].field_0
                require stor2[address(arg1)][idx].field_0 + s >= s
                mem[0] = arg1
                mem[32] = 2
                s = sub_109324d0 - stor2[address(arg1)][idx].field_256 / sub_0f2eb511
                s = stor2[address(arg1)][idx].field_0 / sub_f069f88c
                idx = idx + 1
                s = stor2[address(arg1)][idx].field_0 + s
                continue 
    require stor2[address(arg1)].field_512 >= 0
    if stor2[address(arg1)].field_512 <= 0:
        if stor2[address(arg1)].field_256 + stor2[address(arg1)].field_512 >= stor2[address(arg1)].field_512:
            return stor2[address(arg1)].field_256 + stor2[address(arg1)].field_512, s, stor2[address(arg1)].field_768, block.timestamp
    else:
        if stor2[address(arg1)].field_256 >= 0:
            return stor2[address(arg1)].field_256, s, stor2[address(arg1)].field_768, block.timestamp
    revert
}

function depositEther(address arg1) payable {
    if ext_code.size(msg.sender):
        revert with 0, 'sorry humans only'
    if not uint8(stor16.field_16):
        revert with 0, 'only activated'
    if sub_109324d0:
        call feeAddr with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require msg.value >= 10^15
        require 30 > stor2[msg.sender].field_0
        if block.timestamp > sub_b3b95e30:
            if msg.value:
                if not stor2[msg.sender].field_0:
                    stor3.length++
                    stor3[stor3.length] = msg.sender or Mask(96, 160, stor3[stor3.length])
                stor2[msg.sender].field_0++
                stor2[msg.sender][stor2[msg.sender].field_0].field_0 = msg.value
                stor2[msg.sender][stor2[msg.sender].field_0].field_256 = block.timestamp
                if arg1:
                    if arg1 != msg.sender:
                        if arg1 != this.address:
                            require sub_f069f88c
                            require (msg.value / sub_f069f88c) + stor2[address(arg1)].field_512 >= stor2[address(arg1)].field_512
                            stor2[address(arg1)].field_512 += msg.value / sub_f069f88c
                if not sub_109324d0:
                    if block.timestamp - stor20 >= sub_0f2eb511:
                        uint256(stor18) = msg.sender or Mask(96, 160, uint256(stor18))
                        stor19 = msg.value
                        stor20 = block.timestamp
                    else:
                        if msg.value > stor19:
                            uint256(stor18) = msg.sender or Mask(96, 160, uint256(stor18))
                            stor19 = msg.value
                            stor20 = block.timestamp
                emit 0x82c91b29: msg.value, msg.value, block.timestamp, msg.sender, arg1
        else:
            if not sub_109324d0:
                s = 0
                s = 0
                idx = 0
                s = 0
                while idx < stor2[address(msg.sender)].field_0:
                    require idx < stor2[address(msg.sender)].field_0
                    require sub_f069f88c
                    require idx < stor2[address(msg.sender)].field_0
                    require stor2[address(msg.sender)][idx].field_256 <= block.timestamp
                    require sub_0f2eb511
                    if not stor2[address(msg.sender)][idx].field_0 / sub_f069f88c:
                        require idx < stor2[address(msg.sender)].field_0
                        if stor2[address(msg.sender)][idx].field_0:
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
                    else:
                        require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c / stor2[address(msg.sender)][idx].field_0 / sub_f069f88c == block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                        require idx < stor2[address(msg.sender)].field_0
                        if not stor2[address(msg.sender)][idx].field_0:
                            require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                        else:
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                            if block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0:
                                require block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
                    require idx < stor2[address(msg.sender)].field_0
                    require stor2[address(msg.sender)][idx].field_0 + s >= s
                    mem[0] = msg.sender
                    mem[32] = 2
                    s = block.timestamp - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                    s = stor2[address(msg.sender)][idx].field_0 / sub_f069f88c
                    idx = idx + 1
                    s = stor2[address(msg.sender)][idx].field_0 + s
                    continue 
            else:
                s = 0
                s = 0
                idx = 0
                s = 0
                while idx < stor2[address(msg.sender)].field_0:
                    require idx < stor2[address(msg.sender)].field_0
                    require sub_f069f88c
                    require idx < stor2[address(msg.sender)].field_0
                    require stor2[address(msg.sender)][idx].field_256 <= sub_109324d0
                    require sub_0f2eb511
                    if not stor2[address(msg.sender)][idx].field_0 / sub_f069f88c:
                        require idx < stor2[address(msg.sender)].field_0
                        if stor2[address(msg.sender)][idx].field_0:
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
                    else:
                        require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c / stor2[address(msg.sender)][idx].field_0 / sub_f069f88c == sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                        require idx < stor2[address(msg.sender)].field_0
                        if not stor2[address(msg.sender)][idx].field_0:
                            require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                        else:
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 / stor2[address(msg.sender)][idx].field_0 == sub_b9fdcf5c
                            if sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c < sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0:
                                require sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511 * stor2[address(msg.sender)][idx].field_0 / sub_f069f88c >= 0
                            require sub_b9fdcf5c * stor2[address(msg.sender)][idx].field_0 >= 0
                    require idx < stor2[address(msg.sender)].field_0
                    require stor2[address(msg.sender)][idx].field_0 + s >= s
                    mem[0] = msg.sender
                    mem[32] = 2
                    s = sub_109324d0 - stor2[address(msg.sender)][idx].field_256 / sub_0f2eb511
                    s = stor2[address(msg.sender)][idx].field_0 / sub_f069f88c
                    idx = idx + 1
                    s = stor2[address(msg.sender)][idx].field_0 + s
                    continue 
            require stor2[address(msg.sender)].field_512 >= 0
            if stor2[address(msg.sender)].field_512 <= 0:
                require stor2[address(msg.sender)].field_256 + stor2[address(msg.sender)].field_512 >= stor2[address(msg.sender)].field_512
            else:
                require stor2[address(msg.sender)].field_256 >= 0
            if s >= investmentLimit:
                if msg.value > 0:
                    call feeAddr with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if msg.value > investmentLimit - s:
                    call feeAddr with:
                       value msg.value - investmentLimit + s wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if investmentLimit - s:
                        if not stor2[msg.sender].field_0:
                            stor3.length++
                            stor3[stor3.length] = msg.sender or Mask(96, 160, stor3[stor3.length])
                        stor2[msg.sender].field_0++
                        stor2[msg.sender][stor2[msg.sender].field_0].field_0 = investmentLimit - s
                        stor2[msg.sender][stor2[msg.sender].field_0].field_256 = block.timestamp
                        if arg1:
                            if arg1 != msg.sender:
                                if arg1 != this.address:
                                    require sub_f069f88c
                                    require (investmentLimit - s / sub_f069f88c) + stor2[address(arg1)].field_512 >= stor2[address(arg1)].field_512
                                    stor2[address(arg1)].field_512 += investmentLimit - s / sub_f069f88c
                        if not sub_109324d0:
                            if block.timestamp - stor20 >= sub_0f2eb511:
                                uint256(stor18) = msg.sender or Mask(96, 160, uint256(stor18))
                                stor19 = investmentLimit - s
                                stor20 = block.timestamp
                            else:
                                if investmentLimit - s > stor19:
                                    uint256(stor18) = msg.sender or Mask(96, 160, uint256(stor18))
                                    stor19 = investmentLimit - s
                                    stor20 = block.timestamp
                        emit 0x82c91b29: msg.value, investmentLimit - s, block.timestamp, msg.sender, arg1
                else:
                    if msg.value > msg.value:
                        call feeAddr with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if msg.value:
                        if not stor2[msg.sender].field_0:
                            stor3.length++
                            stor3[stor3.length] = msg.sender or Mask(96, 160, stor3[stor3.length])
                        stor2[msg.sender].field_0++
                        stor2[msg.sender][stor2[msg.sender].field_0].field_0 = msg.value
                        stor2[msg.sender][stor2[msg.sender].field_0].field_256 = block.timestamp
                        if arg1:
                            if arg1 != msg.sender:
                                if arg1 != this.address:
                                    require sub_f069f88c
                                    require (msg.value / sub_f069f88c) + stor2[address(arg1)].field_512 >= stor2[address(arg1)].field_512
                                    stor2[address(arg1)].field_512 += msg.value / sub_f069f88c
                        if not sub_109324d0:
                            if block.timestamp - stor20 >= sub_0f2eb511:
                                uint256(stor18) = msg.sender or Mask(96, 160, uint256(stor18))
                                stor19 = msg.value
                                stor20 = block.timestamp
                            else:
                                if msg.value > stor19:
                                    uint256(stor18) = msg.sender or Mask(96, 160, uint256(stor18))
                                    stor19 = msg.value
                                    stor20 = block.timestamp
                        emit 0x82c91b29: msg.value, msg.value, block.timestamp, msg.sender, arg1
    return 1
}



}
