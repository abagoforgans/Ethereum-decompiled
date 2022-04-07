contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[3296 len 32]
    stor1 = code.data[3328 len 32]
    return code.data[148 len 3148]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address creatorAddress;
uint256 sellPrice;
uint256 totalSupply;
array of struct funder;
mapping of uint256 balanceOf;

function creator() {
    return creatorAddress
}

function totalSupply() {
    return totalSupply
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function getFunder(uint256 arg1) {
    require arg1 < funder.length
    return funder[arg1].field_0, funder[arg1].field_256
}

function _fallback() payable {
    revert
}

function burn(uint256 arg1) {
    require msg.sender == creatorAddress
    totalSupply -= arg1
}

function issue(uint256 arg1) {
    require msg.sender == creatorAddress
    totalSupply += arg1
}

function setPrices(uint256 arg1) {
    require msg.sender == creatorAddress
    sellPrice = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_6485c41b(?) payable {
    require msg.value >= 10^17
    funder.length++
    if not funder.length <= funder.length + 1:
        idx = 2 * funder.length + 1
        while 2 * funder.length > idx:
            funder[idx].field_0 = 0
            funder[idx].field_256 = 0
            idx = idx + 2
            continue 
    funder[funder.length].field_0 = msg.sender
    funder[funder.length].field_256 = msg.value / 10^18
    require sellPrice
    require totalSupply >= msg.value / sellPrice
    require balanceOf[address(msg.sender)] + (msg.value / sellPrice) >= balanceOf[address(msg.sender)]
    totalSupply -= msg.value / sellPrice
    balanceOf[address(msg.sender)] += msg.value / sellPrice
    emit Transfer((msg.value / sellPrice), this.address, msg.sender);
    call 0xcd4fc8e4da5b25885c7d80b6c846afb6b170b49b with:
       value 50 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x005cd1194c1f088d9bd8bf9e70e5e44d2194c029 with:
       value 24 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x00d0aca6d3d07b3546fc76e60a90ccdccc7c0e0c with:
       value 6 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x5ca7f20427e4d202777ea8006dc8f614a289be2f with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0x7d49c6a86fde3de9c47544c58b7b0f035197415b with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (msg.value / sellPrice)
}



}
