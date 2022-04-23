contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0x121f4eeee1118423a982326cac955182ab397f5b
    require not msg.value
    return code.data[68 len 14739]
}



// =====================  Runtime code  =====================


const name = Array(len=35, data='Elysium (generator smart contrac', 'ts)', Mask(24, -256, 'Elysium (generator smart contrac', 'ts)') << 256)


array of address tokenContract;
address stor1;

function TokenContract(uint256 arg1) {
    require arg1 < tokenContract.length
    return address(tokenContract[arg1])
}

function transferOwner(address arg1) {
    require stor1 == msg.sender
    require arg1
    stor1 = arg1
}

function _fallback() payable {
    if msg.value / 10^18 < tokenContract.length:
        require stor1 == msg.sender
    create contract with 0 wei
                    code: code.data[945 len 13751], address(msg.sender), stor1
    require create.new_address
    tokenContract.length++
    if not tokenContract.length <= tokenContract.length + 1:
        idx = tokenContract.length + 1
        while tokenContract.length > idx:
            uint256(tokenContract[idx]) = 0
            idx = idx + 1
            continue 
    require tokenContract.length < tokenContract.length
    address(tokenContract[tokenContract.length]) = address(create.new_address)
    emit 0x48cc7934: address(create.new_address), tokenContract.length
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
