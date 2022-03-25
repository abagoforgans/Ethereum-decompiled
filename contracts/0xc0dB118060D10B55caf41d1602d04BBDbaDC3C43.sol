contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor1 = 1
    stor0 = msg.sender
    require msg.value <= 0
    require code.data[3126 len 32] >= 0
    require code.data[3170 len 20]
    stor3 = code.data[3170 len 20]
    stor2 = code.data[3126 len 32]
    return code.data[266 len 2860]
}



// =====================  Runtime code  =====================


address stor0;
uint256 version;
uint256 price;
address stor3;

function version() {
    return version
}

function price() {
    return price
}

function _fallback() {
    require msg.value <= 0
}

function setPrice(uint256 arg1) {
    require msg.sender == stor0
    require msg.value <= 0
    require arg1 >= 0
    price = arg1
}

function create(address arg1, uint256 arg2, bool arg3) payable {
    require msg.value >= price
    if price <= 0:
        if arg1:
            create contract with 0 wei
                            code: code.data[952 len 1908], address(arg1), arg2, arg3
            if create.new_address:
                emit Created(msg.sender, arg1, address(create.new_address));
                if msg.value <= price:
                    return address(create.new_address)
                call msg.sender with:
                   value msg.value - price wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    return address(create.new_address)
    else:
        call stor3 with:
           value price wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            if arg1:
                create contract with 0 wei
                                code: code.data[952 len 1908], address(arg1), arg2, arg3
                if create.new_address:
                    emit Created(msg.sender, arg1, address(create.new_address));
                    if msg.value <= price:
                        return address(create.new_address)
                    call msg.sender with:
                       value msg.value - price wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        return address(create.new_address)
    revert 
}



}
