contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
address stor2;

function _fallback() payable {
    uint8(stor1.field_160) = 6
    create contract with 0 wei
                    code: code.data[1900 len 4306]
    require create.new_address
    stor2 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    return code.data[310 len 1590]
}



// =====================  Runtime code  =====================


address owner;
uint8 currentState; offset 160
address stor1;
address tokenAddress;

function currentState() {
    require currentState <= 7
    return currentState
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setIcoState(uint8 arg1) {
    require msg.sender == owner
    require arg1 <= 7
    currentState = arg1
}

function _fallback() payable {
    require msg.sender
    require msg.value > 0
    require currentState <= 7
    require currentState <= 5
    require currentState <= 7
    require currentState <= 7
    require currentState <= 7
    require currentState <= 7
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    if currentState != 1:
        if currentState != 2:
            if currentState != 3:
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
            else:
                if currentState != 4:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (20000 * msg.value / 100)
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
        else:
            if currentState != 3:
                if currentState != 4:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (30000 * msg.value / 100)
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
            else:
                if currentState != 4:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (20000 * msg.value / 100)
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
    else:
        if currentState != 2:
            if currentState != 3:
                if currentState != 4:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (40000 * msg.value / 100)
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
            else:
                if currentState != 4:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (20000 * msg.value / 100)
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
        else:
            if currentState != 3:
                if currentState != 4:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (30000 * msg.value / 100)
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
            else:
                if currentState != 4:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (20000 * msg.value / 100)
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1000 * msg.value) + (10000 * msg.value / 100)
    require ext_call.success
}



}
