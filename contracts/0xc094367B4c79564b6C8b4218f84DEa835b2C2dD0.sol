contract main {




// =====================  Runtime code  =====================


#
#  - purchase(uint256 arg1, address arg2)
#
uint256 stor6;
mapping of address ownerOf;
mapping of uint256 balanceOf;
address contractOwner;
uint256 startTime;
uint256 currentDevFee;
address sub_87848ec0Address;
address sub_8221d84fAddress;
array of uint256 stor15;
array of uint256 stor16;
array of uint256 stor17;
array of uint256 stor18;
array of uint256 stor19;

function sub_2d11aed7(?) {
    return ownerOf[arg1]
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function startTime() {
    return startTime
}

function sub_8221d84f(?) {
    return sub_8221d84fAddress
}

function sub_87848ec0(?) {
    return sub_87848ec0Address
}

function contractOwner() {
    return contractOwner
}

function currentDevFee() {
    return currentDevFee
}

function _fallback() payable {
    revert
}

function paused() {
    return (block.timestamp < startTime)
}

function collectDevFees() {
    require msg.sender == contractOwner
    if eth.balance(this.address) > currentDevFee:
        currentDevFee = 0
        call contractOwner with:
           value currentDevFee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function priceOf(uint256 arg1) {
    require arg1 < 6
    if block.timestamp - stor18[arg1] >= stor17[arg1]:
        return stor15[arg1]
    if stor16[arg1] == stor15[arg1]:
        return stor15[arg1]
    require stor17[arg1]
    return (stor16[arg1] - ((block.timestamp * stor16[arg1]) - (stor18[arg1] * stor16[arg1]) - (block.timestamp * stor15[arg1]) + (stor18[arg1] * stor15[arg1]) / stor17[arg1]))
}

function collectBagHolderFund(uint256 arg1) {
    require block.timestamp > startTime
    require msg.sender == ownerOf[arg1]
    require arg1 < 6
    idx = 128
    s = 0
    while stor[(6 * arg1) + 14].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + 14) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    require arg1 < 6
    if block.timestamp - stor18[arg1] < stor17[arg1]:
        if stor16[arg1] != stor15[arg1]:
            require stor17[arg1]
    require block.timestamp > stor6 + stor18[arg1]
    require stor19[arg1] > 0
    require arg1 < 6
    stor19[arg1] = 0
    stor15[arg1] = 15 * 10^15
    call msg.sender with:
       value stor19[arg1] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b3a45b75(?) {
    require arg1 < 6
    mem[128] = stor[sha3((6 * arg1) + 14)]
    idx = 128
    s = 0
    while stor[(6 * arg1) + 14].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + 14) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(6 * arg1) + 14].length) + 160] = stor15[arg1]
    mem[ceil32(stor[(6 * arg1) + 14].length) + 192] = stor16[arg1]
    mem[ceil32(stor[(6 * arg1) + 14].length) + 224] = stor17[arg1]
    mem[ceil32(stor[(6 * arg1) + 14].length) + 256] = stor18[arg1]
    mem[ceil32(stor[(6 * arg1) + 14].length) + 288] = stor19[arg1]
    mem[ceil32(stor[(6 * arg1) + 14].length) + 128] = 192
    mem[ceil32(stor[(6 * arg1) + 14].length) + 320] = stor[(6 * arg1) + 14].length
    if 0 < stor[(6 * arg1) + 14].length:
        mem[ceil32(stor[(6 * arg1) + 14].length) + 352] = mem[128]
        mem[ceil32(stor[(6 * arg1) + 14].length) + 384 len floor32(stor[(6 * arg1) + 14].length - 1)] = mem[160 len floor32(stor[(6 * arg1) + 14].length - 1)]
    return Array(len=stor[(6 * arg1) + 14].length, data=mem[ceil32(stor[(6 * arg1) + 14].length) + 352 len stor[(6 * arg1) + 14].length]), 
           stor15[arg1],
           stor16[arg1],
           stor17[arg1],
           stor18[arg1],
           stor19[arg1]
}

function sub_9b9bce68(?) {
    require arg1 < 6
    mem[128] = stor[sha3((6 * arg1) + 14)]
    idx = 128
    s = 0
    while stor[(6 * arg1) + 14].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + 14) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    if arg1 < 6:
        if block.timestamp - stor18[arg1] >= stor17[arg1]:
            return Array(len=stor[(6 * arg1) + 14].length, data=mem[128 len stor[(6 * arg1) + 14].length]), 
                   stor15[arg1],
                   stor15[arg1],
                   ownerOf[arg1],
                   stor19[arg1],
                   block.timestamp > stor6 + stor18[arg1]
        if stor16[arg1] == stor15[arg1]:
            return Array(len=stor[(6 * arg1) + 14].length, data=mem[128 len stor[(6 * arg1) + 14].length]), 
                   stor15[arg1],
                   stor15[arg1],
                   ownerOf[arg1],
                   stor19[arg1],
                   block.timestamp > stor6 + stor18[arg1]
        if stor17[arg1]:
            return Array(len=stor[(6 * arg1) + 14].length, data=mem[128 len stor[(6 * arg1) + 14].length]), 
                   stor16[arg1] - ((block.timestamp * stor16[arg1]) - (stor18[arg1] * stor16[arg1]) - (block.timestamp * stor15[arg1]) + (stor18[arg1] * stor15[arg1]) / stor17[arg1]),
                   stor15[arg1],
                   ownerOf[arg1],
                   stor19[arg1],
                   block.timestamp > stor6 + stor18[arg1]
    revert
}

function sub_00aa972e(?) {
    if block.timestamp - stor18.length >= stor17.length:
        idx = 1
        s = 0
        while idx < 6:
            if block.timestamp - stor18[idx] >= stor17[idx]:
                if stor15[idx] >= stor15.length:
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if stor16[idx] == stor15[idx]:
                    if stor15[idx] >= stor15.length:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    require stor17[idx]
                    if stor16[idx] - ((block.timestamp * stor16[idx]) - (stor18[idx] * stor16[idx]) - (block.timestamp * stor15[idx]) + (stor18[idx] * stor15[idx]) / stor17[idx]) >= stor15.length:
                        idx = idx + 1
                        s = s
                        continue 
            idx = idx + 1
            s = idx
            continue 
    else:
        if stor16.length == stor15.length:
            idx = 1
            s = 0
            while idx < 6:
                if block.timestamp - stor18[idx] >= stor17[idx]:
                    if stor15[idx] >= stor15.length:
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if stor16[idx] == stor15[idx]:
                        if stor15[idx] >= stor15.length:
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        require stor17[idx]
                        if stor16[idx] - ((block.timestamp * stor16[idx]) - (stor18[idx] * stor16[idx]) - (block.timestamp * stor15[idx]) + (stor18[idx] * stor15[idx]) / stor17[idx]) >= stor15.length:
                            idx = idx + 1
                            s = s
                            continue 
                idx = idx + 1
                s = idx
                continue 
        else:
            require stor17.length
            idx = 1
            s = 0
            while idx < 6:
                if block.timestamp - stor18[idx] >= stor17[idx]:
                    if stor15[idx] >= stor16.length - ((block.timestamp * stor16.length) - (stor18.length * stor16.length) - (block.timestamp * stor15.length) + (stor18.length * stor15.length) / stor17.length):
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if stor16[idx] == stor15[idx]:
                        if stor15[idx] >= stor16.length - ((block.timestamp * stor16.length) - (stor18.length * stor16.length) - (block.timestamp * stor15.length) + (stor18.length * stor15.length) / stor17.length):
                            idx = idx + 1
                            s = s
                            continue 
                    else:
                        require stor17[idx]
                        if stor16[idx] - ((block.timestamp * stor16[idx]) - (stor18[idx] * stor16[idx]) - (block.timestamp * stor15[idx]) + (stor18[idx] * stor15[idx]) / stor17[idx]) >= stor16.length - ((block.timestamp * stor16.length) - (stor18.length * stor16.length) - (block.timestamp * stor15.length) + (stor18.length * stor15.length) / stor17.length):
                            idx = idx + 1
                            s = s
                            continue 
                idx = idx + 1
                s = idx
                continue 
    return s
}



}
