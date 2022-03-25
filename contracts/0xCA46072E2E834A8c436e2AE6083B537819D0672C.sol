contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
uint256 stor7302;
uint256 storD619;
uint256 stor130F;
uint256 stor26F1;
uint256 stor3530;
uint256 stor398B;
uint256 stor4650;
uint256 stor5300;
uint256 stor53E6;
uint256 stor5D34;
uint256 stor6B0D;
uint256 stor6D02;
uint256 stor70FA;
uint256 stor7170;
uint256 stor7851;
uint256 stor795A;
uint256 stor83EA;
uint256 stor87B3;
uint256 stor8D21;
uint256 stor9105;
uint256 stor9FAA;
uint256 storA273;
uint256 storA5CE;
uint256 storAABD;
uint256 storB17B;
uint256 storB5BB;
uint256 storB856;
uint256 storC038;
uint256 storCBE3;
uint256 storCCAE;
uint256 storD14D;
uint256 storD487;
uint256 storD798;
uint256 storF190;
uint256 storF5F2;

function _fallback() payable {
    require msg.value <= 0
    call 0xd19c135354ac6d9d78545b0ede05b56e72214c03.0x720c4798 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor0[ext_call.return_data[12 len 20]] = 400 * 10^6
    storC038 = 5 * 10^6
    stor6D02 = 200000
    stor5300 = 125 * 3600
    stor7851 = 50000
    stor3530 = 250 * 3600
    storF5F2 = 250000
    stor6B0D = 1270000
    storD14D = 4200000
    stor70FA = 5 * 10^6
    stor9105 = 680000
    stor8D21 = 2490000
    storCCAE = 100000
    stor7302 = 10000
    storD798 = 100000
    storB856 = 5 * 10^6
    stor4650 = 5 * 10^6
    storB5BB = 10 * 10^6
    storD487 = 250000
    stor398B = 500000
    storAABD = 2 * 10^6
    stor83EA = 100000
    stor7170 = 775 * 3600
    storA5CE = 125 * 3600
    stor795A = 550000
    stor53E6 = 500000
    stor26F1 = 500 * 3600
    storF190 = 300000
    stor5D34 = 670000
    stor130F = 275 * 3600
    stor9FAA = 3500000
    storCBE3 = 150000
    storA273 = 10560000
    stor87B3 = 80000
    storD619 = 5 * 10^6
    storB17B = 29110000
    stor2 = 500 * 10^6
    return code.data[1513 len 1954]
}



// =====================  Runtime code  =====================


const name = Array(len=11, data=mem[224])

const decimals = 0

const symbol = Array(len=5, data=mem[224])


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function issueTokens(address arg1, uint256 arg2) payable {
    require msg.sender == 0x1b5d5ae7d4c4efbc99a5cb0aec188264a8689dc5
    if 0 == arg2:
        return 0
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require msg.value <= 0
    call 0xd19c135354ac6d9d78545b0ede05b56e72214c03.0x720c4798 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == msg.sender:
        call 0x1b5d5ae7d4c4efbc99a5cb0aec188264a8689dc5.0x49cc954b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        require ext_call.return_data[0]
    call 0xd19c135354ac6d9d78545b0ede05b56e72214c03.0x5d0be9de with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    call 0xd19c135354ac6d9d78545b0ede05b56e72214c03.0x5d0be9de with:
         gas gas_remaining - 25050 wei
        args arg1
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require msg.value <= 0
    call 0xd19c135354ac6d9d78545b0ede05b56e72214c03.0x720c4798 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if msg.sender == ext_call.return_data[12 len 20]:
        call 0x1b5d5ae7d4c4efbc99a5cb0aec188264a8689dc5.0x49cc954b with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        require ext_call.return_data[0]
    call 0xd19c135354ac6d9d78545b0ede05b56e72214c03.0x5d0be9de with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    call 0xd19c135354ac6d9d78545b0ede05b56e72214c03.0x5d0be9de with:
         gas gas_remaining - 25050 wei
        args arg2
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
