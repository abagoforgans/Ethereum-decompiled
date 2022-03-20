contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor0 = 2
    return code.data[41 len 803]
}



// =====================  Runtime code  =====================


uint256 stor0;
address owner;
mapping of struct stor2;

function owner() payable {
    return owner
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function transaction() payable {
    if 0 == stor2[address(msg.sender)].field_0:
        stor2[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor2[address(msg.sender)].field_0)
        stor2[address(msg.sender)].field_256 = msg.value - 10^17
        stor2[address(msg.sender)].field_512 = block.number
    else:
        if msg.value == 10^17:
            if block.number - stor2[address(msg.sender)].field_512 >= 30240:
                if eth.balance(this.address) >= (stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor2[address(msg.sender)].field_256:
                    call msg.sender with:
                       value (stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor2[address(msg.sender)].field_256 wei
                         gas 0 wei
                    stor2[address(msg.sender)].field_256 = 0
            else:
                if eth.balance(this.address) >= stor2[address(msg.sender)].field_256 - (5 * stor2[address(msg.sender)].field_256 / 100):
                    call msg.sender with:
                       value stor2[address(msg.sender)].field_256 - (5 * stor2[address(msg.sender)].field_256 / 100) wei
                         gas 0 wei
                    stor2[address(msg.sender)].field_256 = 0
        else:
            if eth.balance(this.address) >= stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100:
                call msg.sender with:
                   value stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100 wei
                     gas 0 wei
                stor2[address(msg.sender)].field_256 = 0
            stor2[address(msg.sender)].field_256 = msg.value + stor2[address(msg.sender)].field_256 - 10^17
            stor2[address(msg.sender)].field_512 = block.number
}

function _fallback() payable {
    if msg.value < 10^18:
        require 10^17 == msg.value
    require msg.value <= eth.balance(this.address)
    if not stor2[address(msg.sender)].field_0:
        require msg.value != 10^17
    if eth.balance(this.address) >= 10^17:
        call owner with:
           value 10^17 wei
             gas 0 wei
    if 0 == stor2[address(msg.sender)].field_0:
        stor2[address(msg.sender)].field_0 = msg.sender or Mask(96, 160, stor2[address(msg.sender)].field_0)
        stor2[address(msg.sender)].field_256 = msg.value - 10^17
        stor2[address(msg.sender)].field_512 = block.number
    else:
        if msg.value == 10^17:
            if block.number - stor2[address(msg.sender)].field_512 >= 30240:
                if eth.balance(this.address) >= (stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor2[address(msg.sender)].field_256:
                    call msg.sender with:
                       value (stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100) + stor2[address(msg.sender)].field_256 wei
                         gas 0 wei
                    stor2[address(msg.sender)].field_256 = 0
            else:
                if eth.balance(this.address) >= stor2[address(msg.sender)].field_256 - (5 * stor2[address(msg.sender)].field_256 / 100):
                    call msg.sender with:
                       value stor2[address(msg.sender)].field_256 - (5 * stor2[address(msg.sender)].field_256 / 100) wei
                         gas 0 wei
                    stor2[address(msg.sender)].field_256 = 0
        else:
            if eth.balance(this.address) >= stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100:
                call msg.sender with:
                   value stor2[address(msg.sender)].field_256 * block.number - stor2[address(msg.sender)].field_512 / 30240 * stor0 / 100 wei
                     gas 0 wei
                stor2[address(msg.sender)].field_256 = 0
            stor2[address(msg.sender)].field_256 = msg.value + stor2[address(msg.sender)].field_256 - 10^17
            stor2[address(msg.sender)].field_512 = block.number
}



}
