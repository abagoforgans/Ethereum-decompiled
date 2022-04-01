contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 3239]




// =====================  Runtime code  =====================


mapping of address walletFor;

function getWalletFor(address arg1) {
    return walletFor[address(arg1)]
}

function _fallback() payable {
    revert
}

function createWallet(uint8 arg1) {
    if walletFor[address(msg.sender)]:
        require ext_code.size(walletFor[address(msg.sender)])
        call walletFor[address(msg.sender)].getOwner() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == msg.sender
    create contract with 0 wei
                    code: code.data[714 len 2482], arg1 << 248, msg.sender
    require create.new_address
    walletFor[address(msg.sender)] = address(create.new_address)
    return address(create.new_address)
}



}
