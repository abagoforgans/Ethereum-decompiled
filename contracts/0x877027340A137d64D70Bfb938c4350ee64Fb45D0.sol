contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = 0
    stor2 = 10^15
    require not msg.value
    stor0 = msg.sender
    return code.data[73 len 796]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 stor2;
bool stor3;
uint256 stor3; offset 1
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;

function goodbye() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function despoit(uint256 arg1) {
    require stor0 == msg.sender
    stor1 += arg1
    return (arg1 + stor1)
}

function randomGen(uint256 arg1, uint256 arg2) {
    require arg2
    return (sha3(block.hash(block.number - 1), arg1) % arg2)
}

function multiBlockRandomGen(uint256 arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < arg2:
        mem[96] = block.hash(block.number + -idx - 1)
        mem[128] = arg1
        if bool(sha3(block.hash(block.number + -idx - 1), arg1)):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 2^idx
        continue 
    return s
}

function goodluck(uint256 arg1) payable {
    require stor5[address(msg.sender)] != 1
    require stor1
    stor5[address(msg.sender)] = 1
    stor1--
    if not stor1 - 1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if stor1:
            bool(stor3.field_0) = 0
            uint255(stor3.field_1) = uint255(eth.balance(this.address) / stor1)
            if uint256(stor3.field_0):
                stor4 = sha3(block.hash(block.number - 1), arg1) % uint256(stor3.field_0)
                if sha3(block.hash(block.number - 1), arg1) % uint256(stor3.field_0) < stor2:
                    stor4 = stor2
                call msg.sender with:
                   value stor4 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert
}



}
