contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address stor3;

function custodian() payable {
    return custodianAddress
}

function lockRequestCount() payable {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return custodianChangeReqs[arg1]
}

function _fallback() payable {
    revert
}

function confirmCustodianChange(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function requestCustodianChange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function checkBurnAllowed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='token/settings')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xbb5ebde2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'global burn must be allowed'
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='validators/kyc')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7ae4aa15 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe73656e64657220646f6573206e6f7420686176652076616c6964204b5943207374617475,
                    mem[201 len 27]
    return 0x1100000000000000000000000000000000000000000000000000000000000000
}

function checkMintAllowed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='token/settings')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x1f1fd193 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'global mint must be allowed'
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='validators/kyc')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7ae4aa15 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73726563697069656e7420646f6573206e6f7420686176652076616c6964204b5943207374617475,
                    mem[204 len 24]
    return 0x1100000000000000000000000000000000000000000000000000000000000000
}

function checkTransferAllowed(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='token/settings')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb95306d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'global trade must be allowed'
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='validators/kyc')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7ae4aa15 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe73656e64657220646f6573206e6f7420686176652076616c6964204b5943207374617475,
                    mem[201 len 27]
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='validators/kyc')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7ae4aa15 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73726563697069656e7420646f6573206e6f7420686176652076616c6964204b5943207374617475,
                    mem[204 len 24]
    return 0x1100000000000000000000000000000000000000000000000000000000000000
}

function checkTransferFromAllowed(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='token/settings')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb95306d7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'global trade must be allowed'
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='validators/kyc')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7ae4aa15 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe73656e64657220646f6573206e6f7420686176652076616c6964204b5943207374617475,
                    mem[201 len 27]
    require ext_code.size(stor3)
    staticcall stor3.0x794758be with:
            gas gas_remaining wei
           args Array(len=14, data='validators/kyc')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7ae4aa15 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 2
    if ext_call.return_data[0] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73726563697069656e7420646f6573206e6f7420686176652076616c6964204b5943207374617475,
                    mem[204 len 24]
    return 0x1100000000000000000000000000000000000000000000000000000000000000
}



}
