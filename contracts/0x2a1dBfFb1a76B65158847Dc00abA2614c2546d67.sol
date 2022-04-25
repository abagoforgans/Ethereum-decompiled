contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor3;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor1[address(msg.sender)] = 500000000 * 10^18
    return code.data[74 len 9673]
}



// =====================  Runtime code  =====================


const name = 'LTest'

const totalSupply = 500000000 * 10^18

const decimals = 18

const symbol = 'TEST'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor3;
mapping of uint8 stor4;
mapping of struct stor5;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function authorize(address arg1) {
    require arg1
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = 1
}

function deauthorize(address arg1) {
    require arg1
    require arg1 != msg.sender
    stor4[address(msg.sender)][address(arg1)] = 0
}

function sub_d32e6c90(?) {
    require msg.sender
    require arg1
    require arg1 != msg.sender
    emit AccountLinked(msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function authorizedBy(address arg1) {
    require arg1
    if msg.sender == arg1:
        return True
    return bool(stor4[address(arg1)][address(msg.sender)])
}

function sub_f21c89ee(?) {
    require arg1
    if arg1 != msg.sender:
        require stor4[address(arg1)][address(msg.sender)]
    require arg1
    require arg2
    require arg2 != arg1
    emit AccountLinked(arg1, arg2);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function escalateDisputeToMediator(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_512
    if stor5[arg1].field_512 != msg.sender:
        require stor4[stor5[arg1].field_512][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 3
    stor5[arg1].field_1216 = 4
    stor5[arg1].field_1280 = block.timestamp
    emit TransactionEscalated(arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function provideTransactionFeedback(uint256 arg1, uint8 arg2, bytes32 arg3) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    if not stor5[arg1].field_0:
        require stor5[arg1].field_256 == msg.sender
    else:
        require stor5[arg1].field_0 == msg.sender
        require stor5[arg1].field_256
        if stor5[arg1].field_256 != msg.sender:
            require stor4[stor5[arg1].field_256][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 18
    require arg2 >= 1
    require arg2 <= 5
    emit FeedbackUpdated(arg2 << 248, arg3, arg1);
}

function disputeTransaction(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_256
    if stor5[arg1].field_256 != msg.sender:
        require stor4[stor5[arg1].field_256][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 2
    require ext_code.size(stor5[arg1].field_768)
    call stor5[arg1].field_768.0xd8d4fc7c with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require stor5[arg1].field_1280 <= block.timestamp
    require block.timestamp - stor5[arg1].field_1280 >= ext_call.return_data[28 len 4]
    stor5[arg1].field_1216 = 3
    stor5[arg1].field_1280 = block.timestamp
    emit TransactionDisputed(arg1);
}

function revokeTransaction(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_256
    if stor5[arg1].field_256 != msg.sender:
        require stor4[stor5[arg1].field_256][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 1
    emit TransactionRevoked(arg1);
    if stor5[arg1].field_1536 > 0:
        require stor5[arg1].field_256
        require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
        require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= stor5[arg1].field_1536
        require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
        balanceOf[stor5[arg1].field_256] += stor5[arg1].field_1536
        emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_256);
    stor5[arg1].field_0 = 0
    stor5[arg1].field_256 = 0
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function sub_bd72287e(?) {
    require arg1
    if arg1 != msg.sender:
        require stor4[address(arg1)][address(msg.sender)]
    require arg1
    require arg2
    require arg2 != arg1
    require arg3 > 0
    if arg6:
        require arg5
    else:
        require not arg5
    stor3++
    if arg1 != msg.sender:
        stor5[stor3].field_0 = msg.sender
    stor5[stor3].field_256 = arg1
    stor5[stor3].field_512 = arg2
    stor5[stor3].field_1216 = 1
    stor5[stor3].field_1536 = arg3
    stor5[stor3].field_768 = arg5
    if not arg6:
        emit TransactionInitiated(address(msg.sender), address(arg5), address(arg6), stor5[stor3].field_1536, arg4, stor3, stor5[stor3].field_256, stor5[stor3].field_512);
    else:
        stor5[stor3].field_1024 = arg6
        require ext_code.size(arg6)
        call arg6.0x38eb3c75 with:
             gas gas_remaining - 710 wei
            args stor3, stor5[stor3].field_1536
        require ext_call.success
        stor5[stor3].field_1184 = uint32(ext_call.return_data[32])
        require ext_call.return_data[0]
        emit TransactionInitiated(msg.sender, ext_call.return_data[32], address(arg6), stor5[stor3].field_1536, arg4, stor3, stor5[stor3].field_256, stor5[stor3].field_512);
    require this.address
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg3 + balanceOf[this.address]
    emit Transfer(arg3, arg1, this.address);
}

function createTransaction(address arg1, uint256 arg2, bytes32 arg3, address arg4, address arg5) {
    require msg.sender
    require arg1
    require arg1 != msg.sender
    require arg2 > 0
    if arg5:
        require arg4
    else:
        require not arg4
    stor3++
    if msg.sender != msg.sender:
        stor5[stor3].field_0 = msg.sender
    stor5[stor3].field_256 = msg.sender
    stor5[stor3].field_512 = arg1
    stor5[stor3].field_1216 = 1
    stor5[stor3].field_1536 = arg2
    stor5[stor3].field_768 = arg4
    if not arg5:
        emit TransactionInitiated(address(msg.sender), address(arg4), address(arg5), stor5[stor3].field_1536, arg3, stor3, stor5[stor3].field_256, stor5[stor3].field_512);
    else:
        stor5[stor3].field_1024 = arg5
        require ext_code.size(arg5)
        call arg5.0x38eb3c75 with:
             gas gas_remaining - 710 wei
            args stor3, stor5[stor3].field_1536
        require ext_call.success
        stor5[stor3].field_1184 = uint32(ext_call.return_data[32])
        require ext_call.return_data[0]
        emit TransactionInitiated(msg.sender, ext_call.return_data[32], address(arg5), stor5[stor3].field_1536, arg3, stor3, stor5[stor3].field_256, stor5[stor3].field_512);
    require this.address
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg2 + balanceOf[this.address]
    emit Transfer(arg2, msg.sender, this.address);
}

function settleTransaction(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_256
    if stor5[arg1].field_256 != msg.sender:
        if not stor4[stor5[arg1].field_256][address(msg.sender)]:
            require stor5[arg1].field_512
            if stor5[arg1].field_512 != msg.sender:
                require stor4[stor5[arg1].field_512][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 4
    require stor5[arg1].field_1280 <= block.timestamp
    require block.timestamp - stor5[arg1].field_1280 >= stor5[arg1].field_1184
    require stor5[arg1].field_1537 <= stor5[arg1].field_1536
    emit TransactionSettled(2 * Mask(256, -1, stor5[arg1].field_1537), stor5[arg1].field_1536 - stor5[arg1].field_1537, arg1);
    if stor5[arg1].field_1537 > 0:
        require stor5[arg1].field_256
        require stor5[arg1].field_1537 <= balanceOf[address(this.address)]
        require stor5[arg1].field_1537 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= stor5[arg1].field_1537
        require stor5[arg1].field_1537 + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
        balanceOf[stor5[arg1].field_256] += stor5[arg1].field_1537
        emit Transfer(stor5[arg1].field_1537, this.address, stor5[arg1].field_256);
    if stor5[arg1].field_1536 - stor5[arg1].field_1537 > 0:
        require stor5[arg1].field_512
        require stor5[arg1].field_1536 - stor5[arg1].field_1537 <= balanceOf[address(this.address)]
        require stor5[arg1].field_1536 - stor5[arg1].field_1537 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + stor5[arg1].field_1537
        require stor5[arg1].field_1536 - stor5[arg1].field_1537 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
        balanceOf[stor5[arg1].field_512] = stor5[arg1].field_1536 - stor5[arg1].field_1537 + balanceOf[stor5[arg1].field_512]
        emit Transfer((stor5[arg1].field_1536 - stor5[arg1].field_1537), this.address, stor5[arg1].field_512);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function acceptTransaction(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_512
    if stor5[arg1].field_512 != msg.sender:
        require stor4[stor5[arg1].field_512][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 1
    if not stor5[arg1].field_1024:
        emit TransactionAccepted(arg1);
        emit TransactionConfirmed(0, arg1);
        require 0 <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 > 0:
            require stor5[arg1].field_512
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= stor5[arg1].field_1536
            require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
            balanceOf[stor5[arg1].field_512] += stor5[arg1].field_1536
            emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_512);
        stor5[arg1].field_512 = 0
        stor5[arg1].field_768 = 0
        stor5[arg1].field_1024 = 0
        stor5[arg1].field_1184 = stor5[arg1].field_1184
        stor5[arg1].field_1216 = 18
        stor5[arg1].field_1280 = 0
        stor5[arg1].field_1536 = 0
    else:
        stor5[arg1].field_1216 = 2
        stor5[arg1].field_1280 = block.timestamp
        emit TransactionAccepted(arg1);
        if not stor5[arg1].field_1024:
            emit TransactionConfirmed(0, arg1);
            require 0 <= stor5[arg1].field_1536
            if stor5[arg1].field_1536 > 0:
                require stor5[arg1].field_512
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor5[arg1].field_1536
                require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
                balanceOf[stor5[arg1].field_512] += stor5[arg1].field_1536
                emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_512);
            stor5[arg1].field_512 = 0
            stor5[arg1].field_768 = 0
            stor5[arg1].field_1024 = 0
            stor5[arg1].field_1184 = stor5[arg1].field_1184
            stor5[arg1].field_1216 = 18
            stor5[arg1].field_1280 = 0
            stor5[arg1].field_1536 = 0
}

function refundTransactionByMediator(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_1024 == msg.sender
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 4
    if not stor5[arg1].field_1024:
        emit TransactionRefundedByMediator(0, arg1);
        require 0 <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 > 0:
            require stor5[arg1].field_256
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= stor5[arg1].field_1536
            require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
            balanceOf[stor5[arg1].field_256] += stor5[arg1].field_1536
            emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_256);
    else:
        require ext_code.size(stor5[arg1].field_1024)
        call stor5[arg1].field_1024.refundTransactionByMediatorFee(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args stor5[arg1].field_1536
        require ext_call.success
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        emit TransactionRefundedByMediator(ext_call.return_data[0], arg1);
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
            require stor5[arg1].field_256
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
            require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
            balanceOf[stor5[arg1].field_256] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256]
            emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_256);
        if ext_call.return_data[0] > 0:
            require stor5[arg1].field_1024
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= ext_call.return_data[0]
            require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
            balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function confirmTransactionByMediator(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_1024 == msg.sender
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 4
    if not stor5[arg1].field_1024:
        emit TransactionConfirmedByMediator(0, arg1);
        require 0 <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 > 0:
            require stor5[arg1].field_512
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= stor5[arg1].field_1536
            require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
            balanceOf[stor5[arg1].field_512] += stor5[arg1].field_1536
            emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_512);
    else:
        require ext_code.size(stor5[arg1].field_1024)
        call stor5[arg1].field_1024.confirmTransactionByMediatorFee(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args stor5[arg1].field_1536
        require ext_call.success
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        emit TransactionConfirmedByMediator(ext_call.return_data[0], arg1);
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
            require stor5[arg1].field_512
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
            require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
            balanceOf[stor5[arg1].field_512] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512]
            emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_512);
        if ext_call.return_data[0] > 0:
            require stor5[arg1].field_1024
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= ext_call.return_data[0]
            require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
            balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function settleTransactionByMediator(uint256 arg1, uint256 arg2, uint256 arg3) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_1024 == msg.sender
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 4
    require arg3 + arg2 >= arg2
    require arg3 + arg2 == stor5[arg1].field_1536
    require ext_code.size(stor5[arg1].field_1024)
    call stor5[arg1].field_1024.settleTransactionByMediatorFee(uint256 rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args arg2, arg3
    require ext_call.success
    require ext_call.return_data[0] <= arg2
    require ext_call.return_data[32] <= arg3
    emit TransactionSettledByMediator(arg2, arg3, ext_call.return_data[0], ext_call.return_data[32], arg1);
    require ext_call.return_data[0] <= arg2
    if arg2 - ext_call.return_data[0] > 0:
        require stor5[arg1].field_256
        require arg2 - ext_call.return_data[0] <= balanceOf[address(this.address)]
        require arg2 - ext_call.return_data[0] <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg2 + ext_call.return_data[0]
        require arg2 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
        balanceOf[stor5[arg1].field_256] = arg2 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256]
        emit Transfer((arg2 - ext_call.return_data[0]), this.address, stor5[arg1].field_256);
    require ext_call.return_data[32] <= arg3
    if arg3 - ext_call.return_data[32] > 0:
        require stor5[arg1].field_512
        require arg3 - ext_call.return_data[32] <= balanceOf[address(this.address)]
        require arg3 - ext_call.return_data[32] <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg3 + ext_call.return_data[32]
        require arg3 - ext_call.return_data[32] + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
        balanceOf[stor5[arg1].field_512] = arg3 - ext_call.return_data[32] + balanceOf[stor5[arg1].field_512]
        emit Transfer((arg3 - ext_call.return_data[32]), this.address, stor5[arg1].field_512);
    require ext_call.return_data[32] + ext_call.return_data[0] >= ext_call.return_data[0]
    if ext_call.return_data[32] + ext_call.return_data[0] > 0:
        require stor5[arg1].field_1024
        require ext_call.return_data[32] + ext_call.return_data[0] <= balanceOf[address(this.address)]
        require ext_call.return_data[32] + ext_call.return_data[0] <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] = balanceOf[address(this.address)] - ext_call.return_data[32] - ext_call.return_data[0]
        require ext_call.return_data[32] + ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
        balanceOf[stor5[arg1].field_1024] = ext_call.return_data[32] + ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024]
        emit Transfer((ext_call.return_data[32] + ext_call.return_data[0]), this.address, stor5[arg1].field_1024);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function refundTransactionAfterExpiry(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_256
    if stor5[arg1].field_256 != msg.sender:
        require stor4[stor5[arg1].field_256][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 3
    require ext_code.size(stor5[arg1].field_768)
    call stor5[arg1].field_768.0x5b16fbbd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require stor5[arg1].field_1280 <= block.timestamp
    require block.timestamp - stor5[arg1].field_1280 >= ext_call.return_data[28 len 4]
    if not stor5[arg1].field_1024:
        emit TransactionRefundedAfterExpiry(0, arg1);
        require 0 <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 > 0:
            require stor5[arg1].field_256
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= stor5[arg1].field_1536
            require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
            balanceOf[stor5[arg1].field_256] += stor5[arg1].field_1536
            emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_256);
    else:
        require ext_code.size(stor5[arg1].field_1024)
        call stor5[arg1].field_1024.refundTransactionAfterExpiryFee(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args stor5[arg1].field_1536
        require ext_call.success
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        emit TransactionRefundedAfterExpiry(ext_call.return_data[0], arg1);
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
            require stor5[arg1].field_256
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
            require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
            balanceOf[stor5[arg1].field_256] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256]
            emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_256);
        if ext_call.return_data[0] > 0:
            require stor5[arg1].field_1024
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= ext_call.return_data[0]
            require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
            balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function confirmTransactionAfterExpiry(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_512
    if stor5[arg1].field_512 != msg.sender:
        require stor4[stor5[arg1].field_512][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216 == 2
    require ext_code.size(stor5[arg1].field_768)
    call stor5[arg1].field_768.0x43718f33 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require stor5[arg1].field_1280 <= block.timestamp
    require block.timestamp - stor5[arg1].field_1280 >= ext_call.return_data[28 len 4]
    if not stor5[arg1].field_1024:
        emit TransactionConfirmedAfterExpiry(0, arg1);
        require 0 <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 > 0:
            require stor5[arg1].field_512
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= stor5[arg1].field_1536
            require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
            balanceOf[stor5[arg1].field_512] += stor5[arg1].field_1536
            emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_512);
    else:
        require ext_code.size(stor5[arg1].field_1024)
        call stor5[arg1].field_1024.confirmTransactionAfterExpiryFee(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args stor5[arg1].field_1536
        require ext_call.success
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        emit TransactionConfirmedAfterExpiry(ext_call.return_data[0], arg1);
        require ext_call.return_data[0] <= stor5[arg1].field_1536
        if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
            require stor5[arg1].field_512
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
            require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
            balanceOf[stor5[arg1].field_512] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512]
            emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_512);
        if ext_call.return_data[0] > 0:
            require stor5[arg1].field_1024
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            require ext_call.return_data[0] <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= ext_call.return_data[0]
            require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
            balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function sub_1a615688(?) {
    require arg1
    if arg1 != msg.sender:
        require stor4[address(arg1)][address(msg.sender)]
    require arg2
    if arg2 != msg.sender:
        require stor4[address(arg2)][address(msg.sender)]
    require arg1
    require arg2
    require arg2 != arg1
    require arg3 > 0
    if arg6:
        require arg5
    else:
        require not arg5
    stor3++
    if arg1 != msg.sender:
        stor5[stor3].field_0 = msg.sender
    stor5[stor3].field_256 = arg1
    stor5[stor3].field_512 = arg2
    stor5[stor3].field_1216 = 1
    stor5[stor3].field_1536 = arg3
    stor5[stor3].field_768 = arg5
    if not arg6:
        emit TransactionInitiated(address(msg.sender), address(arg5), address(arg6), stor5[stor3].field_1536, arg4, stor3, stor5[stor3].field_256, stor5[stor3].field_512);
    else:
        stor5[stor3].field_1024 = arg6
        require ext_code.size(arg6)
        call arg6.0x38eb3c75 with:
             gas gas_remaining - 710 wei
            args stor3, stor5[stor3].field_1536
        require ext_call.success
        stor5[stor3].field_1184 = uint32(ext_call.return_data[32])
        require ext_call.return_data[0]
        emit TransactionInitiated(msg.sender, ext_call.return_data[32], address(arg6), stor5[stor3].field_1536, arg4, stor3, stor5[stor3].field_256, stor5[stor3].field_512);
    require this.address
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg3 + balanceOf[this.address]
    emit Transfer(arg3, arg1, this.address);
    require stor5[stor3].field_1216 <= 18
    require stor5[stor3].field_1216 == 1
    if not stor5[stor3].field_1024:
        emit TransactionAccepted(stor3);
        emit TransactionConfirmed(0, stor3);
        require 0 <= stor5[stor3].field_1536
        if stor5[stor3].field_1536 > 0:
            require stor5[stor3].field_512
            require stor5[stor3].field_1536 <= balanceOf[address(this.address)]
            require stor5[stor3].field_1536 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= stor5[stor3].field_1536
            require stor5[stor3].field_1536 + balanceOf[stor5[stor3].field_512] >= balanceOf[stor5[stor3].field_512]
            balanceOf[stor5[stor3].field_512] += stor5[stor3].field_1536
            emit Transfer(stor5[stor3].field_1536, this.address, stor5[stor3].field_512);
        stor5[stor3].field_512 = 0
        stor5[stor3].field_768 = 0
        stor5[stor3].field_1024 = 0
        stor5[stor3].field_1184 = stor5[stor3].field_1184
        stor5[stor3].field_1216 = 18
        stor5[stor3].field_1280 = 0
        stor5[stor3].field_1536 = 0
    else:
        stor5[stor3].field_1216 = 2
        stor5[stor3].field_1280 = block.timestamp
        emit TransactionAccepted(stor3);
        if not stor5[stor3].field_1024:
            emit TransactionConfirmed(0, stor3);
            require 0 <= stor5[stor3].field_1536
            if stor5[stor3].field_1536 > 0:
                require stor5[stor3].field_512
                require stor5[stor3].field_1536 <= balanceOf[address(this.address)]
                require stor5[stor3].field_1536 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor5[stor3].field_1536
                require stor5[stor3].field_1536 + balanceOf[stor5[stor3].field_512] >= balanceOf[stor5[stor3].field_512]
                balanceOf[stor5[stor3].field_512] += stor5[stor3].field_1536
                emit Transfer(stor5[stor3].field_1536, this.address, stor5[stor3].field_512);
            stor5[stor3].field_512 = 0
            stor5[stor3].field_768 = 0
            stor5[stor3].field_1024 = 0
            stor5[stor3].field_1184 = stor5[stor3].field_1184
            stor5[stor3].field_1216 = 18
            stor5[stor3].field_1280 = 0
            stor5[stor3].field_1536 = 0
}

function refundTransaction(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_512
    if stor5[arg1].field_512 != msg.sender:
        require stor4[stor5[arg1].field_512][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    if stor5[arg1].field_1216 == 2:
        if not stor5[arg1].field_1024:
            emit TransactionRefunded(0, arg1);
            require 0 <= stor5[arg1].field_1536
            if stor5[arg1].field_1536 > 0:
                require stor5[arg1].field_256
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor5[arg1].field_1536
                require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
                balanceOf[stor5[arg1].field_256] += stor5[arg1].field_1536
                emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_256);
        else:
            require ext_code.size(stor5[arg1].field_1024)
            call stor5[arg1].field_1024.refundTransactionFee(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args stor5[arg1].field_1536
            require ext_call.success
            require ext_call.return_data[0] <= stor5[arg1].field_1536
            emit TransactionRefunded(ext_call.return_data[0], arg1);
            require ext_call.return_data[0] <= stor5[arg1].field_1536
            if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
                require stor5[arg1].field_256
                require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
                require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
                balanceOf[stor5[arg1].field_256] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256]
                emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_256);
            if ext_call.return_data[0] > 0:
                require stor5[arg1].field_1024
                require ext_call.return_data[0] <= balanceOf[address(this.address)]
                require ext_call.return_data[0] <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= ext_call.return_data[0]
                require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
                balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    else:
        require stor5[arg1].field_1216 <= 18
        if stor5[arg1].field_1216 != 3:
            require stor5[arg1].field_1216 <= 18
            require stor5[arg1].field_1216 == 4
            require stor5[arg1].field_1280 <= block.timestamp
            require block.timestamp - stor5[arg1].field_1280 >= stor5[arg1].field_1184
            if stor5[arg1].field_1024:
                require 0 <= stor5[arg1].field_1536
            emit 0xe78c4035: 0, arg1
            require 0 <= stor5[arg1].field_1536
            if stor5[arg1].field_1536 > 0:
                require stor5[arg1].field_256
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor5[arg1].field_1536
                require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
                balanceOf[stor5[arg1].field_256] += stor5[arg1].field_1536
                emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_256);
        else:
            if not stor5[arg1].field_1024:
                emit TransactionRefundedAfterDispute(0, arg1);
                require 0 <= stor5[arg1].field_1536
                if stor5[arg1].field_1536 > 0:
                    require stor5[arg1].field_256
                    require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                    require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor5[arg1].field_1536
                    require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
                    balanceOf[stor5[arg1].field_256] += stor5[arg1].field_1536
                    emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_256);
            else:
                require ext_code.size(stor5[arg1].field_1024)
                call stor5[arg1].field_1024.refundTransactionAfterDisputeFee(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args stor5[arg1].field_1536
                require ext_call.success
                require ext_call.return_data[0] <= stor5[arg1].field_1536
                emit TransactionRefundedAfterDispute(ext_call.return_data[0], arg1);
                require ext_call.return_data[0] <= stor5[arg1].field_1536
                if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
                    require stor5[arg1].field_256
                    require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                    require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
                    require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256] >= balanceOf[stor5[arg1].field_256]
                    balanceOf[stor5[arg1].field_256] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_256]
                    emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_256);
                if ext_call.return_data[0] > 0:
                    require stor5[arg1].field_1024
                    require ext_call.return_data[0] <= balanceOf[address(this.address)]
                    require ext_call.return_data[0] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= ext_call.return_data[0]
                    require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
                    balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}

function confirmTransaction(uint256 arg1) {
    require stor5[arg1].field_1216 <= 18
    require stor5[arg1].field_1216
    require stor5[arg1].field_256
    if stor5[arg1].field_256 != msg.sender:
        require stor4[stor5[arg1].field_256][address(msg.sender)]
    require stor5[arg1].field_1216 <= 18
    if stor5[arg1].field_1216 == 2:
        if not stor5[arg1].field_1024:
            emit TransactionConfirmed(0, arg1);
            require 0 <= stor5[arg1].field_1536
            if stor5[arg1].field_1536 > 0:
                require stor5[arg1].field_512
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor5[arg1].field_1536
                require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
                balanceOf[stor5[arg1].field_512] += stor5[arg1].field_1536
                emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_512);
        else:
            require ext_code.size(stor5[arg1].field_1024)
            call stor5[arg1].field_1024.confirmTransactionFee(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args stor5[arg1].field_1536
            require ext_call.success
            require ext_call.return_data[0] <= stor5[arg1].field_1536
            emit TransactionConfirmed(ext_call.return_data[0], arg1);
            require ext_call.return_data[0] <= stor5[arg1].field_1536
            if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
                require stor5[arg1].field_512
                require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
                require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
                balanceOf[stor5[arg1].field_512] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512]
                emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_512);
            if ext_call.return_data[0] > 0:
                require stor5[arg1].field_1024
                require ext_call.return_data[0] <= balanceOf[address(this.address)]
                require ext_call.return_data[0] <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= ext_call.return_data[0]
                require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
                balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    else:
        require stor5[arg1].field_1216 <= 18
        if stor5[arg1].field_1216 != 3:
            require stor5[arg1].field_1216 <= 18
            require stor5[arg1].field_1216 == 4
            require stor5[arg1].field_1280 <= block.timestamp
            require block.timestamp - stor5[arg1].field_1280 >= stor5[arg1].field_1184
            if stor5[arg1].field_1024:
                require 0 <= stor5[arg1].field_1536
            emit 0xa5bad297: 0, arg1
            require 0 <= stor5[arg1].field_1536
            if stor5[arg1].field_1536 > 0:
                require stor5[arg1].field_512
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                balanceOf[address(this.address)] -= stor5[arg1].field_1536
                require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
                balanceOf[stor5[arg1].field_512] += stor5[arg1].field_1536
                emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_512);
        else:
            if not stor5[arg1].field_1024:
                emit TransactionConfirmedAfterDispute(0, arg1);
                require 0 <= stor5[arg1].field_1536
                if stor5[arg1].field_1536 > 0:
                    require stor5[arg1].field_512
                    require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                    require stor5[arg1].field_1536 <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= stor5[arg1].field_1536
                    require stor5[arg1].field_1536 + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
                    balanceOf[stor5[arg1].field_512] += stor5[arg1].field_1536
                    emit Transfer(stor5[arg1].field_1536, this.address, stor5[arg1].field_512);
            else:
                require ext_code.size(stor5[arg1].field_1024)
                call stor5[arg1].field_1024.confirmTransactionAfterDisputeFee(uint256 rg1) with:
                     gas gas_remaining - 710 wei
                    args stor5[arg1].field_1536
                require ext_call.success
                require ext_call.return_data[0] <= stor5[arg1].field_1536
                emit TransactionConfirmedAfterDispute(ext_call.return_data[0], arg1);
                require ext_call.return_data[0] <= stor5[arg1].field_1536
                if stor5[arg1].field_1536 - ext_call.return_data[0] > 0:
                    require stor5[arg1].field_512
                    require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                    require stor5[arg1].field_1536 - ext_call.return_data[0] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - stor5[arg1].field_1536 + ext_call.return_data[0]
                    require stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512] >= balanceOf[stor5[arg1].field_512]
                    balanceOf[stor5[arg1].field_512] = stor5[arg1].field_1536 - ext_call.return_data[0] + balanceOf[stor5[arg1].field_512]
                    emit Transfer((stor5[arg1].field_1536 - ext_call.return_data[0]), this.address, stor5[arg1].field_512);
                if ext_call.return_data[0] > 0:
                    require stor5[arg1].field_1024
                    require ext_call.return_data[0] <= balanceOf[address(this.address)]
                    require ext_call.return_data[0] <= balanceOf[address(this.address)]
                    balanceOf[address(this.address)] -= ext_call.return_data[0]
                    require ext_call.return_data[0] + balanceOf[stor5[arg1].field_1024] >= balanceOf[stor5[arg1].field_1024]
                    balanceOf[stor5[arg1].field_1024] += ext_call.return_data[0]
                    emit Transfer(ext_call.return_data[0], this.address, stor5[arg1].field_1024);
    stor5[arg1].field_512 = 0
    stor5[arg1].field_768 = 0
    stor5[arg1].field_1024 = 0
    stor5[arg1].field_1184 = stor5[arg1].field_1184
    stor5[arg1].field_1216 = 18
    stor5[arg1].field_1280 = 0
    stor5[arg1].field_1536 = 0
}



}
