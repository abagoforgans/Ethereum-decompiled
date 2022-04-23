contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0x2cabcc986e6d9300e3c87d4db67d92ee3fdc955a
    require not msg.value
    return code.data[68 len 14684]
}



// =====================  Runtime code  =====================


const name = Array(len=36, data='Plasmium (Plasma contract genera', 'tor)', Mask(32, -256, 'Plasmium (Plasma contract genera', 'tor)') << 256)


array of address sub_b1b1adfa;
address stor1;

function sub_b1b1adfa(?) {
    require arg1 < sub_b1b1adfa.length
    return address(sub_b1b1adfa[arg1])
}

function transferOwner(address arg1) {
    require stor1 == msg.sender
    require arg1
    stor1 = arg1
}

function _fallback() payable {
    if msg.value / 10^18 < sub_b1b1adfa.length:
        require stor1 == msg.sender
    create contract with 0 wei
                    code: code.data[945 len 13696], address(msg.sender), stor1
    require create.new_address
    sub_b1b1adfa.length++
    if not sub_b1b1adfa.length <= sub_b1b1adfa.length + 1:
        idx = sub_b1b1adfa.length + 1
        while sub_b1b1adfa.length > idx:
            uint256(sub_b1b1adfa[idx]) = 0
            idx = idx + 1
            continue 
    require sub_b1b1adfa.length < sub_b1b1adfa.length
    address(sub_b1b1adfa[sub_b1b1adfa.length]) = address(create.new_address)
    emit 0x1ff3daa9: address(create.new_address), sub_b1b1adfa.length
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
