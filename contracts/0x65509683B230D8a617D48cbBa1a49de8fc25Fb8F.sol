contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;

function killContract() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function sub_193b135b(?) {
    require msg.sender == stor0
    stor2 = arg1
}

function sub_5e572df6(?) {
    require msg.sender == stor0
    stor4 = arg1
}

function sub_bd814b78(?) {
    require msg.sender == stor0
    stor1 = arg1
}

function sub_cae539ce(?) {
    require msg.sender == stor0
    stor3 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    if arg1:
        stor0 = arg1
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokens() payable {
    s = 0
    idx = 0
    while idx < stor4:
        mem[96 len 416] = code.data[1405 len 416]
        mem[512] = msg.sender
        mem[544] = stor2
        mem[576] = stor1
        create contract with 0 wei
                        code: code.data[1405 len 416], msg.sender, stor2, stor1
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor3:
        mem[96 len 408] = code.data[1821 len 408]
        mem[504] = stor2
        mem[536] = stor1
        create contract with 0 wei
                        code: code.data[1821 len 408], stor2, stor1
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
}

function _fallback() payable {
    s = 0
    idx = 0
    while idx < stor4:
        mem[96 len 416] = code.data[1405 len 416]
        mem[512] = msg.sender
        mem[544] = stor2
        mem[576] = stor1
        create contract with 0 wei
                        code: code.data[1405 len 416], msg.sender, stor2, stor1
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < stor3:
        mem[96 len 408] = code.data[1821 len 408]
        mem[504] = stor2
        mem[536] = stor1
        create contract with 0 wei
                        code: code.data[1821 len 408], stor2, stor1
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
}



}
