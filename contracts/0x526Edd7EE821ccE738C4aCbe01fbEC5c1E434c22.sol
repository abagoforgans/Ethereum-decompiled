contract main {




// =====================  Runtime code  =====================


mapping of address sub_b26fe5ac;
mapping of uint8 stor1;
address stor2;

function sub_b26fe5ac(?) {
    require calldata.size - 4 >= 32
    return sub_b26fe5ac[arg1]
}

function _owners(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function sub_5ce784ef(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'Sender is not an owner'
    stor2 = arg1
}

function add_owner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'Sender is not an owner'
    if stor1[address(arg1)]:
        revert with 0, 'This address is already an owner'
    stor1[address(arg1)] = 1
}

function remove_owner(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        revert with 0, 'Sender is not an owner'
    if not stor1[address(arg1)]:
        revert with 0, 'This address is not an owner'
    stor1[address(arg1)] = 0
}

function sub_778ce5b7(?) payable {
    require calldata.size - 4 >= 32
    if sub_b26fe5ac[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 41, code.data[2334 len 41], mem[205 len 23]
    emit Deposit(arg1, msg.value);
}

function sub_0694aec0(?) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[2298 len 36], mem[200 len 28]
    create contract with 0 wei
                    code: code.data[1920 len 378], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_b26fe5ac[arg1] = address(create.new_address)
    return address(create.new_address)
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[msg.sender]:
        if stor2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[2298 len 36], mem[200 len 28]
    if arg1 > eth.balance(this.address):
        revert with 0, 'Not enough balance'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(address(arg2), arg1);
}



}
