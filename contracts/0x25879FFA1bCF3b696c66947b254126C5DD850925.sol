contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = 2
    stor2 = 2
    return code.data[45 len 975]
}



// =====================  Runtime code  =====================


uint256 stor0;
address owner;
array of uint256 stor3;
mapping of struct stor4;

function owner() payable {
    return owner
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function transaction() payable {
    if 0 == address(stor4[address(msg.sender)].field_0):
        stor4[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor4[address(msg.sender)].field_0)
        stor4[address(msg.sender)].field_256 = msg.value - 10^17
        stor4[address(msg.sender)].field_512 = block.number
    else:
        if msg.value == 10^17:
            if block.number - stor4[address(msg.sender)].field_512 >= 30240:
                if eth.balance(this.address) >= (stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor4[address(msg.sender)].field_256:
                    call msg.sender with:
                       value (stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor4[address(msg.sender)].field_256 wei
                         gas 0 wei
                    stor4[address(msg.sender)].field_256 = 0
            else:
                if eth.balance(this.address) >= stor4[address(msg.sender)].field_256 - (5 * stor4[address(msg.sender)].field_256 / 100):
                    call msg.sender with:
                       value stor4[address(msg.sender)].field_256 - (5 * stor4[address(msg.sender)].field_256 / 100) wei
                         gas 0 wei
                    stor4[address(msg.sender)].field_256 = 0
        else:
            if eth.balance(this.address) >= stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100:
                call msg.sender with:
                   value stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100 wei
                     gas 0 wei
                stor4[address(msg.sender)].field_256 = 0
            stor4[address(msg.sender)].field_256 += msg.value
            stor4[address(msg.sender)].field_512 = block.number
}

function _fallback() payable {
    stor3.length = (2 * calldata.size) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = 0
    while calldata.size > idx:
        stor[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, calldata.size + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    if msg.value < 10^18:
        require 10^17 == msg.value
    require msg.value <= eth.balance(this.address)
    if not address(stor4[address(msg.sender)].field_0):
        require msg.value != 10^17
    if eth.balance(this.address) >= 10^17:
        call owner with:
           value 10^17 wei
             gas 0 wei
    if 0 == address(stor4[address(msg.sender)].field_0):
        stor4[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor4[address(msg.sender)].field_0)
        stor4[address(msg.sender)].field_256 = msg.value - 10^17
        stor4[address(msg.sender)].field_512 = block.number
    else:
        if msg.value == 10^17:
            if block.number - stor4[address(msg.sender)].field_512 >= 30240:
                if eth.balance(this.address) >= (stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor4[address(msg.sender)].field_256:
                    call msg.sender with:
                       value (stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor4[address(msg.sender)].field_256 wei
                         gas 0 wei
                    stor4[address(msg.sender)].field_256 = 0
            else:
                if eth.balance(this.address) >= stor4[address(msg.sender)].field_256 - (5 * stor4[address(msg.sender)].field_256 / 100):
                    call msg.sender with:
                       value stor4[address(msg.sender)].field_256 - (5 * stor4[address(msg.sender)].field_256 / 100) wei
                         gas 0 wei
                    stor4[address(msg.sender)].field_256 = 0
        else:
            if eth.balance(this.address) >= stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100:
                call msg.sender with:
                   value stor4[address(msg.sender)].field_256 * block.number - stor4[address(msg.sender)].field_512 / 30240 * stor0 / 100 wei
                     gas 0 wei
                stor4[address(msg.sender)].field_256 = 0
            stor4[address(msg.sender)].field_256 += msg.value
            stor4[address(msg.sender)].field_512 = block.number
}



}
