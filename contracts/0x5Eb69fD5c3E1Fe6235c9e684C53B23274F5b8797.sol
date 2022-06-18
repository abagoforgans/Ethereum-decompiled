contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 paused;
address sub_36c499c5Address; offset 8

function sub_36c499c5(?) {
    return sub_36c499c5Address
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function paused() {
    return bool(paused)
}

function deleteContract() {
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.cooAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(sub_36c499c5Address)
        staticcall sub_36c499c5Address.ceoAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(sub_36c499c5Address)
            staticcall sub_36c499c5Address.cfoAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
    emit 0xc7c83e11: msg.sender, block.number
    selfdestruct(msg.sender)
}

function destroy() {
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.cooAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(sub_36c499c5Address)
        staticcall sub_36c499c5Address.ceoAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(sub_36c499c5Address)
            staticcall sub_36c499c5Address.cfoAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.sender == ext_call.return_data[12 len 20]
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function hello() {
    require not paused
    emit 0x8578ee5f: msg.sender
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require paused
    paused = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not paused
    paused = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    if stor0[address(arg1)]:
        revert with 0, 'This account is already added'
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_36c499c5Address)
    staticcall sub_36c499c5Address.cooAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_36c499c5Address)
    if ext_call.return_data[12 len 20] != msg.sender:
        staticcall sub_36c499c5Address.ceoAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(sub_36c499c5Address)
            staticcall sub_36c499c5Address.cfoAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(sub_36c499c5Address)
                staticcall sub_36c499c5Address.0x19fd5c51 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.sender == ext_call.return_data[12 len 20]
    call sub_36c499c5Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
