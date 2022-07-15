contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


address tokenAddress;
address owner;
address brokerAddress;
uint256 startDate;
uint256 sub_c9d61fcd;
uint256 sub_cf066d98;
mapping of struct sub_589596b7;

function startDate() {
    return startDate
}

function sub_589596b7(?) {
    require calldata.size - 4 >= 32
    return sub_589596b7[arg1].field_0, 
           sub_589596b7[arg1].field_256,
           sub_589596b7[arg1].field_512,
           sub_589596b7[arg1].field_768,
           bool(sub_589596b7[arg1].field_1024)
}

function owner() {
    return owner
}

function broker() {
    return brokerAddress
}

function sub_c9d61fcd(?) {
    return sub_c9d61fcd
}

function sub_cf066d98(?) {
    return sub_cf066d98
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if tokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by TOKEN'
    if sub_c9d61fcd:
        revert with 0, 'Cannot change total grant'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid : totalGrant must be greater than 0'
    sub_c9d61fcd = arg2
    sub_cf066d98 = arg2
}

function close() {
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if sub_cf066d98 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot close contract with 0 balance.'
    sub_cf066d98 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, sub_cf066d98
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c9d61fcd = 0
}

function sub_7539adfb(?) {
    require calldata.size - 4 >= 32
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if sub_589596b7[address(arg1)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot delete : Grantee was not existed.'
    if sub_589596b7[address(arg1)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot delete : Token was issued.'
    sub_589596b7[address(arg1)].field_0 = 0
    sub_589596b7[address(arg1)].field_256 = 0
    require sub_cf066d98 + sub_589596b7[address(arg1)].field_0 >= sub_cf066d98
    sub_cf066d98 += sub_589596b7[address(arg1)].field_0
}

function sub_76ab861f(?) {
    require calldata.size - 4 >= 32
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if bool(sub_589596b7[address(arg1)].field_1024) != 1:
        revert with 0, 'Grantee was disabled already.'
    sub_589596b7[address(arg1)].field_1024 = 0
    require sub_589596b7[address(arg1)].field_512 <= sub_589596b7[address(arg1)].field_0
    if sub_589596b7[address(arg1)].field_0 - sub_589596b7[address(arg1)].field_512 > 0:
        require sub_cf066d98 + sub_589596b7[address(arg1)].field_0 - sub_589596b7[address(arg1)].field_512 >= sub_cf066d98
        sub_cf066d98 = sub_cf066d98 + sub_589596b7[address(arg1)].field_0 - sub_589596b7[address(arg1)].field_512
}

function sub_eb1945a0(?) {
    require calldata.size - 4 >= 96
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'grantInstallment must greater than 0'
    if arg3 <= 0:
        revert with 0, 'grant amount is out of range'
    if arg3 > sub_cf066d98:
        revert with 0, 'grant amount is out of range'
    if arg3 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'grantAmount should be greater or equal than grantInstallment'
    require arg3 <= sub_cf066d98
    sub_cf066d98 -= arg3
    if sub_589596b7[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add : Grantee was existed.'
    sub_589596b7[address(arg1)].field_0 = arg3
    sub_589596b7[address(arg1)].field_256 = arg2
    sub_589596b7[address(arg1)].field_1024 = 1
}

function sub_47bdc905(?) {
    require calldata.size - 4 >= 32
    if brokerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The method can only be called by BROKER'
    if block.timestamp < startDate:
        revert with 0, 'TokenGrant was not opened now'
    if sub_589596b7[address(arg1)].field_0 <= 0:
        revert with 0, 'Grantee was not existed.'
    if not sub_589596b7[address(arg1)].field_1024:
        revert with 0, 'Grantee was disabled.'
    if sub_589596b7[address(arg1)].field_768 >= sub_589596b7[address(arg1)].field_256:
        revert with 0, 'No more token grant to issue'
    require sub_589596b7[address(arg1)].field_512 <= sub_589596b7[address(arg1)].field_0
    if sub_589596b7[address(arg1)].field_0 - sub_589596b7[address(arg1)].field_512 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total-grant amount must be greater than 0'
    if sub_589596b7[address(arg1)].field_768 == uint8(sub_589596b7[address(arg1)].field_256 - 1):
        require sub_589596b7[address(arg1)].field_0 >= sub_589596b7[address(arg1)].field_512
        sub_589596b7[address(arg1)].field_512 = sub_589596b7[address(arg1)].field_0
        sub_589596b7[address(arg1)].field_768++
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), sub_589596b7[address(arg1)].field_0 - sub_589596b7[address(arg1)].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x8deda03d: (sub_589596b7[address(arg1)].field_0 - sub_589596b7[address(arg1)].field_512), owner, arg1
    else:
        require sub_589596b7[address(arg1)].field_256 > 0
        require sub_589596b7[address(arg1)].field_256
        require sub_589596b7[address(arg1)].field_512 + (sub_589596b7[address(arg1)].field_0 / sub_589596b7[address(arg1)].field_256) >= sub_589596b7[address(arg1)].field_512
        sub_589596b7[address(arg1)].field_512 += sub_589596b7[address(arg1)].field_0 / sub_589596b7[address(arg1)].field_256
        sub_589596b7[address(arg1)].field_768++
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), sub_589596b7[address(arg1)].field_0 / sub_589596b7[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x8deda03d: (sub_589596b7[address(arg1)].field_0 / sub_589596b7[address(arg1)].field_256), owner, arg1
}



}
