contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor4 = 0x2c9bbb65e6e6ecd70ed2eb9731bc25669e886d06
    require not msg.value
    stor3 = stor4
    stor2 = msg.sender
    stor1 = 10^18
    stor0 = stor1 / 100
    return code.data[318 len 1378]
}



// =====================  Runtime code  =====================


uint256 minPrice;
uint256 stor1;
address owner;
address stor3;

function owner() {
    return owner
}

function price() {
    return minPrice
}

function getMinPrice() {
    require owner == msg.sender
    return minPrice
}

function killContract() {
    require owner == msg.sender
    selfdestruct(owner)
}

function setMinPrice(uint256 arg1) {
    require owner == msg.sender
    minPrice = arg1
}

function _fallback() payable {
    if msg.value < minPrice:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require stor1
        if ext_code.size(stor3):
            call stor3.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, 14000 * msg.value / stor1
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
