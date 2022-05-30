contract main {




// =====================  Runtime code  =====================


mapping of address strongHands;

function strongHands(address arg1) {
    return strongHands[arg1]
}

function _fallback() payable {
    revert
}

function create(uint256 arg1) {
    if strongHands[msg.sender]:
        revert with 0, 'you already became a Stronghand'
    create contract with 0 wei
                    code: code.data[591 len 1829], address(msg.sender), arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    strongHands[address(msg.sender)] = address(create.new_address)
    emit CreateStrongHand(msg.sender, address(create.new_address));
}



}
