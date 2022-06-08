contract main {




// =====================  Runtime code  =====================


address promoAddress;
uint256 depositValue;
uint256 sub_8778658a;
uint256 winPercent;
uint256 win;
array of address places;
uint256 stor6;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function win() {
    return win
}

function sub_8778658a(?) {
    return sub_8778658a
}

function winPercent() {
    return winPercent
}

function depositValue() {
    return depositValue
}

function promo() {
    return promoAddress
}

function places(uint256 arg1) {
    require arg1 < places.length
    return address(places[arg1])
}

function _fallback() payable {
    require tx.origin == msg.sender
    require msg.value == depositValue
    places.length++
    stor36B6[stor5.length] = msg.sender or Mask(96, 160, stor36B6[stor5.length])
    if places.length == sub_8778658a:
        stor6 += block.difficulty
        hash = sha256hash(block.hash(block.number + -places.length - 1), msg.sender, block.difficulty + stor6) 
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require sub_8778658a
        idx = 0
        while idx < sub_8778658a:
            if hash % sub_8778658a != idx:
                require idx < places.length
                mem[0] = 5
                call address(places[idx]) with:
                   value win wei
                     gas 2300 * is_zero(value) wei
            idx = idx + 1
            continue 
        call promoAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        places.length = 0
        idx = 0
        while places.length > idx:
            uint256(places[idx]) = 0
            idx = idx + 1
            continue 
}



}
