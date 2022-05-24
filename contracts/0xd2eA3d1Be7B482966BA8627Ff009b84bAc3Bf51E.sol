contract main {




// =====================  Runtime code  =====================


address stor0;

function clear() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function withdraw() payable {
    require tx.origin == msg.sender
    if msg.value > 2 * 10^17:
        idx = 0
        while uint8(idx) < 2 * msg.value:
            if 2 * idx % 128 >= 0:
                idx = idx + 1
                continue 
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
