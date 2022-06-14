contract main {




// =====================  Runtime code  =====================


const name = 'J2TX Token'

const symbol = 'J2TX'


uint8 decimals; offset 160
address owner;
uint256 stor1;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
array of address stor7;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function getOwner() {
    return owner
}

function _fallback() payable {
    stor1 += msg.value
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, '1'
    owner = arg1
}

function sub_41b4ffc9(?) {
    return balanceOf[address(arg1)], stor5[address(arg1)], stor4[address(arg1)]
}

function sub_22c6741e(?) {
    idx = 0
    s = 0
    while idx < stor7.length:
        mem[0] = 7
        if stor7[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if 0 >= stor7.length:
        revert with 0, '32'
    if bool(s) != 1:
        revert with 0, '32'
    stor6[address(arg1)][msg.sender] = arg2
    return 1
}

function sub_9bc5302b(?) {
    if 0 > balanceOf[msg.sender]:
        revert with 0, '31'
    require totalSupply
    stor5[address(msg.sender)] = 100 * 10^18 * balanceOf[msg.sender] / totalSupply * stor1 / 100 * 10^18
    stor4[address(msg.sender)] = (100 * 10^18 * balanceOf[msg.sender] / totalSupply * stor1 / 100 * 10^18) - stor5[address(msg.sender)] + stor4[address(msg.sender)]
    call msg.sender with:
       value (100 * 10^18 * balanceOf[msg.sender] / totalSupply * stor1 / 100 * 10^18) - stor5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, '31'
    if not arg1:
        revert with 0, '30'
    if arg2 <= 0:
        revert with 0, '30'
    if msg.sender == owner:
        if not arg1:
            revert with 0, '30'
        if arg2 <= 0:
            revert with 0, '30'
        idx = 0
        s = 0
        while idx < stor7.length:
            mem[0] = stor7[idx]
            mem[32] = sha3(address(arg1), 6)
            if stor6[address(arg1)][stor7[idx]] != arg2:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        if 2 > s:
            emit 0x5a074a7a: Array(len=13, data='need approove')
            return 0
    require totalSupply
    if arg2 == balanceOf[msg.sender]:
        stor5[address(arg1)] = stor5[address(msg.sender)] + (balanceOf[msg.sender] * stor1 / totalSupply) - stor5[msg.sender] + stor5[address(arg1)]
        stor5[msg.sender] -= stor5[address(msg.sender)]
        stor4[address(msg.sender)] = (balanceOf[msg.sender] * stor1 / totalSupply) - stor5[msg.sender] + stor4[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        call msg.sender with:
           value (balanceOf[msg.sender] * stor1 / totalSupply) - stor5[msg.sender] wei
             gas 2300 * is_zero(value) wei
    else:
        require balanceOf[msg.sender]
        stor5[address(arg1)] = (arg2 * stor5[address(msg.sender)] / balanceOf[msg.sender]) + ((balanceOf[msg.sender] * stor1 / totalSupply * arg2) - (stor5[msg.sender] * arg2) / balanceOf[msg.sender]) + stor5[address(arg1)]
        stor5[msg.sender] -= arg2 * stor5[address(msg.sender)] / balanceOf[msg.sender]
        stor4[address(msg.sender)] += (balanceOf[msg.sender] * stor1 / totalSupply * arg2) - (stor5[msg.sender] * arg2) / balanceOf[msg.sender]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        call msg.sender with:
           value (balanceOf[msg.sender] * stor1 / totalSupply * arg2) - (stor5[msg.sender] * arg2) / balanceOf[msg.sender] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
