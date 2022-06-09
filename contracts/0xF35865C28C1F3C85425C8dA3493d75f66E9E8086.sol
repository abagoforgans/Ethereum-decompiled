contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 _count;
mapping of address stor4;

function _count() {
    return _count
}

function isSigner(address arg1) {
    if arg1 == stor1:
        return True
    if arg1 == stor0:
        return True
    return (arg1 == stor2)
}

function sub_de56623f(?) {
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            require msg.sender == stor2
    return stor4[arg1]
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ForwarderDeposited(address(this.address), msg.sender, msg.value);
}

function createForwarder() payable {
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            require msg.sender == stor2
    create contract with 0 wei
                    code: code.data[1648 len 1716], stor0, stor2, stor1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    _count++
    stor4[stor3] = address(create.new_address)
    emit 0x46fb40e9: address(create.new_address), _count - 1
    return (_count - 1)
}

function sub_15e2aa80(?) payable {
    if stor1 != msg.sender:
        if stor0 != msg.sender:
            require msg.sender == stor2
    idx = 0
    while idx < arg1:
        if stor1 != msg.sender:
            if stor0 != msg.sender:
                require msg.sender == stor2
        mem[96 len 1716] = code.data[1648 len 1716]
        mem[1812] = stor0
        mem[1844] = stor2
        mem[1876] = stor1
        create contract with 0 wei
                        code: code.data[1648 len 1716], stor0, stor2, stor1
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        _count++
        mem[0] = _count
        mem[32] = 4
        stor4[stor3] = address(create.new_address)
        mem[96] = address(create.new_address)
        mem[128] = _count - 1
        emit 0x46fb40e9: address(create.new_address), _count - 1
        idx = idx + 1
        continue 
}



}
