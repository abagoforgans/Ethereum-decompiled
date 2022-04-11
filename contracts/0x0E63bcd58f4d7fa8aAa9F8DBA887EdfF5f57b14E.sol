contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    stor5 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor1 = 0
    stor4 = stor5
    stor3 = msg.sender
    stor2 = 10^18
    stor0 = stor2 / 100
    return code.data[326 len 1475]
}



// =====================  Runtime code  =====================


const getSender = msg.sender

const getNow = block.timestamp

const sub_ca68f5b7(?) = 500


uint256 minPrice;
uint256 number;
uint256 stor2;
address owner;
address stor4;

function number() {
    return number
}

function owner() {
    return owner
}

function price() {
    return minPrice
}

function getMinPrice() {
    return minPrice
}

function killContract() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function setMinPrice(uint256 arg1) {
    minPrice = arg1
}

function _fallback() payable {
    if msg.value < minPrice:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require stor2
        if ext_code.size(stor4):
            call stor4.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, 14000 * msg.value / stor2
            if ext_call.success:
                if ext_call.return_data[0]:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
    revert
}



}
