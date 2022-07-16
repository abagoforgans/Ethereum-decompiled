contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address tokenAddress;
address stor3;

function sub_82384e9a(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function owner() payable {
    return owner
}

function token() payable {
    return tokenAddress
}

function getInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function changeToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, '', mem[164]
    tokenAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', mem[164]
    if not arg1:
        revert with 0, '', mem[164]
    owner = arg1
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', mem[164]
    if not stor1[address(arg1)]:
        return 0
    stor1[address(arg1)] = 0
    return 1
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '', mem[164]
    if stor1[address(arg1)]:
        return 0
    if not arg1:
        revert with 0, '', mem[164]
    stor1[address(arg1)] = 1
    return 1
}

function buyTickets(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, '', mem[164]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, '', arg2
    require ext_code.size(stor3)
    call stor3.0x4eeee164 with:
         gas gas_remaining wei
        args 0, 0, arg2 / 10^18, arg2 / 10^18, arg2 / 10^18, arg2 / 10^18, arg2 / 10^18, arg2 / 10^18, arg2 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
