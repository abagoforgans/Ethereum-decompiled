contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct lookupDocument;
uint8 stor4;
uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address stor8;
uint256 limit;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function custodian() payable {
    return custodianAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function limit() payable {
    return limit
}

function lookupDocument(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = lookupDocument[arg1][1].field_0
    idx = 128
    s = 0
    while lookupDocument[arg1][1].length + 96 > idx:
        mem[idx + 32] = lookupDocument[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=lookupDocument[arg1][1].length, data=mem[128 len lookupDocument[arg1][1].length]), 
           lookupDocument[arg1].field_512
}

function lockRequestCount() payable {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return custodianChangeReqs[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '', mem[164]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function confirmCustodianChange(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '', mem[164]
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, '', mem[164]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function requestCustodianChange(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor5 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '', mem[164]
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, '', mem[164]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function checkMintAllowed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.0x794758be with:
            gas gas_remaining wei
           args Array(len=16, data='token/controller')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x283ca77c with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(8, 248, ext_call.return_data[0])
}

function checkBurnAllowed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.0x794758be with:
            gas gas_remaining wei
           args Array(len=16, data='token/controller')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xa87784f1 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(8, 248, ext_call.return_data[0])
}

function checkTransferAllowed(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor8)
    staticcall stor8.0x794758be with:
            gas gas_remaining wei
           args Array(len=16, data='token/controller')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x85c3a1aa with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(8, 248, ext_call.return_data[0])
}

function checkTransferFromAllowed(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor8)
    staticcall stor8.0x794758be with:
            gas gas_remaining wei
           args Array(len=16, data='token/controller')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x3d33adfb with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return Mask(8, 248, ext_call.return_data[0])
}

function attachDocument(bytes32 arg1, string arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if arg2.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7965787465726e616c2055524920746f2074686520646f63756d656e74206d757374206e6f7420626520656d7074,
                    mem[210 len 18]
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                49,
                0x74646f63756d656e74206d757374206e6f74206265206578697374696e6720756e646572207468652073616d65206e616d,
                mem[213 len 15]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor8)
    staticcall stor8.0x794758be with:
            gas gas_remaining wei
           args Array(len=16, data='token/controller')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x85c3a1aa with:
            gas gas_remaining wei
           args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(8, 248, ext_call.return_data[0]) != Mask(8, 248, stor4):
        revert with 0, 'transfer must be allowed'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, '', arg2
    if not arg1:
        revert with 0, '', arg2
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, '', arg2
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, '', arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == custodianAddress
    if not arg2:
        revert with 0, 'check amount to mint'
    if totalSupply + arg2 > limit:
        revert with 0, 'check total supply after mint'
    require ext_code.size(stor8)
    staticcall stor8.0x794758be with:
            gas gas_remaining wei
           args Array(len=16, data='token/controller')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x283ca77c with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(8, 248, ext_call.return_data[0]) != Mask(8, 248, stor4):
        revert with 0, 'mint must be allowed'
    if not arg1:
        revert with 0, '', 'token/controller'
    if totalSupply + arg2 < totalSupply:
        revert with 0, '', 'token/controller'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, '', 'token/controller'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor8)
    staticcall stor8.0x794758be with:
            gas gas_remaining wei
           args Array(len=16, data='token/controller')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x3d33adfb with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(8, 248, ext_call.return_data[0]) != Mask(8, 248, stor4):
        revert with 0, 'transfer must be allowed'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, '', arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, '', arg3
    if not arg2:
        revert with 0, '', arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, '', arg3
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, '', arg3
    balanceOf[address(arg2)] += arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, '', arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
