contract main {




// =====================  Runtime code  =====================


address authorityAddress;
uint8 stor1; offset 160
address owner;
address stor2;
mapping of uint8 stor3;

function sub_16c94341(?) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function stopped() payable {
    return bool(stor1)
}

function sub_7e22e3a6(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function owner() payable {
    return owner
}

function authority() payable {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    owner = arg1
    emit LogSetOwner(arg1);
}

function setAuthority(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    authorityAddress = arg1
    emit LogSetAuthority(arg1);
}

function stop() payable {
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 1
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 32, 17, 0xfe64732d617574682d6e6f6e2d6f776e65720000000000000000000000000000
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor1 = 0
}

function sub_d293592b(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            if authorityAddress != msg.sender:
                revert with 0, 'ds-auth-unauthorized'
    require arg1
    stor3[address(arg1)] = 0
    emit 0x69a7566f: arg1
}

function sub_ee6fa4cf(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            if authorityAddress != msg.sender:
                revert with 0, 'ds-auth-unauthorized'
    require arg1
    stor3[address(arg1)] = 1
    emit 0x29c92b4e: arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not in MakerList'
    if stor1:
        revert with 0, 'ds-stop-is-stopped'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x9dc29fac with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e0669c2a(?) payable {
    require calldata.size - 4 >= 64
    if bool(stor3[msg.sender]) != 1:
        revert with 0, 'not in MakerList'
    if stor1:
        revert with 0, 'ds-stop-is-stopped'
    require arg1 != this.address
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x9dc29fac with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            if authorityAddress != msg.sender:
                revert with 0, 'ds-auth-unauthorized'
    if stor1:
        revert with 0, 'ds-stop-is-stopped'
    require ext_code.size(stor2)
    call stor2.0x40c10f19 with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
