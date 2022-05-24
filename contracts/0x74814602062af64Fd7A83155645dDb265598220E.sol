contract main {




// =====================  Runtime code  =====================


#
#  - getNextAuditRequest()
#
uint8 stor0; offset 160
address owner;
mapping of uint256 assignedRequestCount;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
address auditDataAddress;

function paused() {
    return bool(stor0)
}

function auditData() {
    return auditDataAddress
}

function owner() {
    return owner
}

function assignedRequestCount(address arg1) {
    return assignedRequestCount[arg1]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getNextPrice(uint256 arg1) {
    require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
    delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0x574047ac with:
         gas gas_remaining wei
        args 2, arg1, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[32]
}

function getNextAssignedRequest(uint256 arg1) {
    require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
    delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0x574047ac with:
         gas gas_remaining wei
        args 4, arg1, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[32]
}

function getNextAuditByPrice(uint256 arg1, uint256 arg2) {
    require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
    delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0x574047ac with:
         gas gas_remaining wei
        args sha3(arg1, 3), arg2, 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[32]
}

function isAuditFinished(uint256 arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.getAuditState(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] == 4:
        return True
    require ext_call.return_data[0] <= 7
    return (ext_call.return_data[0] == 5)
}

function setAuditNodePrice(uint256 arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xd5c21c4f with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogAuditNodePriceChanged(msg.sender, arg1);
}

function anyRequestAvailable() {
    require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
    delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0x53d00bd4 with:
         gas gas_remaining wei
        args 2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        return 2
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xf773a3fb with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if assignedRequestCount[msg.sender] >= ext_call.return_data[0]:
        return 3
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfcb0a7ad with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
    delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0x574047ac with:
         gas gas_remaining wei
        args 2, 0, 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if delegate.return_data[32] >= ext_call.return_data[0]:
        if delegate.return_data[32]:
            return 1
    return 4
}

function resolveErrorReport(uint256 arg1, bool arg2) {
    require msg.sender == owner
    require ext_code.size(auditDataAddress)
    call auditDataAddress.getAuditState(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] != 5:
        emit LogInvalidResolutionCall(arg1);
    else:
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0xc15185f5 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(auditDataAddress)
        if arg2:
            call auditDataAddress.0xe0ebdbff with:
                 gas gas_remaining wei
                args arg1
        else:
            call auditDataAddress.0x3c9a5d59 with:
                 gas gas_remaining wei
                args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0x89afa0ec with:
             gas gas_remaining wei
            args arg1, 7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LogErrorReportResolved(arg1, address(ext_call.return_data[0]), ext_call.return_data[0]);
}

function refund(uint256 arg1) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.getAuditState(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] != 1:
        require ext_call.return_data[0] <= 7
        if ext_call.return_data[0] != 2:
            require ext_call.return_data[0] <= 7
            if ext_call.return_data[0] != 6:
                require ext_call.return_data[0] <= 7
                emit LogRefundInvalidState(arg1, uint8(ext_call.return_data[0]));
                return 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xe0ebdbff with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        emit LogRefundInvalidRequestor(arg1, msg.sender);
        return 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xde42f045 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x630eb125 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= 7
    if ext_call.return_data[0] == 2:
        if 2 * ext_call.return_data[0] >= block.number:
            emit LogRefundInvalidFundsLocked(arg1, block.number, 2 * ext_call.return_data[0]);
            return 0
        if arg1:
            if stor4[arg1][0]:
                stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                stor4[arg1][0] = 0
                stor4[arg1][1] = 0
            else:
                if stor4[arg1][1]:
                    stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                    stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                    stor4[arg1][0] = 0
                    stor4[arg1][1] = 0
                else:
                    if arg1 == stor4[0][1]:
                        stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                        stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                        stor4[arg1][0] = 0
                        stor4[arg1][1] = 0
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0x3c9a5d59 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 <= assignedRequestCount[ext_call.return_data[12 len 20]]
        require ext_code.size(auditDataAddress)
        call auditDataAddress.0x3c9a5d59 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        assignedRequestCount[ext_call.return_data[12 len 20]]--
    else:
        require ext_call.return_data[0] <= 7
        if ext_call.return_data[0] == 1:
            require ext_code.size(auditDataAddress)
            call auditDataAddress.0xc15185f5 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
            delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0xf593633c with:
                 gas gas_remaining wei
                args 2, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0]
            require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
            delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0xf593633c with:
                 gas gas_remaining wei
                args sha3(ext_call.return_data[0], 3), arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require delegate.return_data[0]
            if arg1:
                if stor3[ext_call.return_data[0]][arg1][0]:
                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][1]][0] = stor3[ext_call.return_data[0]][arg1][0]
                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][0]][1] = stor3[ext_call.return_data[0]][arg1][1]
                    stor3[ext_call.return_data[0]][arg1][0] = 0
                    stor3[ext_call.return_data[0]][arg1][1] = 0
                else:
                    if stor3[ext_call.return_data[0]][arg1][1]:
                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][1]][0] = stor3[ext_call.return_data[0]][arg1][0]
                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][0]][1] = stor3[ext_call.return_data[0]][arg1][1]
                        stor3[ext_call.return_data[0]][arg1][0] = 0
                        stor3[ext_call.return_data[0]][arg1][1] = 0
                    else:
                        if arg1 == stor3[ext_call.return_data[0]][0][1]:
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][1]][0] = stor3[ext_call.return_data[0]][arg1][0]
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][arg1][0]][1] = stor3[ext_call.return_data[0]][arg1][1]
                            stor3[ext_call.return_data[0]][arg1][0] = 0
                            stor3[ext_call.return_data[0]][arg1][1] = 0
            require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
            delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0x53d00bd4 with:
                 gas gas_remaining wei
                args sha3(ext_call.return_data[0], 3)
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not delegate.return_data[0]:
                if ext_call.return_data[0]:
                    if stor2[ext_call.return_data[0]][0]:
                        stor2[stor2[ext_call.return_data[0]][1]][0] = stor2[ext_call.return_data[0]][0]
                        stor2[stor2[ext_call.return_data[0]][0]][1] = stor2[ext_call.return_data[0]][1]
                        stor2[ext_call.return_data[0]][0] = 0
                        stor2[ext_call.return_data[0]][1] = 0
                    else:
                        if stor2[ext_call.return_data[0]][1]:
                            stor2[stor2[ext_call.return_data[0]][1]][0] = stor2[ext_call.return_data[0]][0]
                            stor2[stor2[ext_call.return_data[0]][0]][1] = stor2[ext_call.return_data[0]][1]
                            stor2[ext_call.return_data[0]][0] = 0
                            stor2[ext_call.return_data[0]][1] = 0
                        else:
                            if ext_call.return_data[0] == stor2[0][1]:
                                stor2[stor2[ext_call.return_data[0]][1]][0] = stor2[ext_call.return_data[0]][0]
                                stor2[stor2[ext_call.return_data[0]][0]][1] = stor2[ext_call.return_data[0]][1]
                                stor2[ext_call.return_data[0]][0] = 0
                                stor2[ext_call.return_data[0]][1] = 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x89afa0ec with:
         gas gas_remaining wei
        args arg1, 3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xc15185f5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LogRefund(arg1, address(ext_call.return_data[0]), ext_call.return_data[0]);
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function submitReport(uint256 arg1, uint8 arg2, string arg3) {
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 <= 7
    if 4 == arg2:
        require ext_code.size(auditDataAddress)
        call auditDataAddress.getAuditState(uint256 arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= 7
        if ext_call.return_data[0] != 2:
            require ext_call.return_data[0] <= 7
            emit LogReportSubmissionError_InvalidState(arg1, msg.sender, uint8(ext_call.return_data[0]));
        else:
            require ext_code.size(auditDataAddress)
            call auditDataAddress.0x3c9a5d59 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                emit LogReportSubmissionError_InvalidAuditor(arg1, msg.sender);
            else:
                if arg1:
                    if stor4[arg1][0]:
                        stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                        stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                        stor4[arg1][0] = 0
                        stor4[arg1][1] = 0
                    else:
                        if stor4[arg1][1]:
                            stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                            stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                            stor4[arg1][0] = 0
                            stor4[arg1][1] = 0
                        else:
                            if arg1 == stor4[0][1]:
                                stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                                stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                                stor4[arg1][0] = 0
                                stor4[arg1][1] = 0
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x3c9a5d59 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 1 <= assignedRequestCount[ext_call.return_data[12 len 20]]
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x3c9a5d59 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                assignedRequestCount[ext_call.return_data[12 len 20]]--
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0xde42f045 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x630eb125 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < block.number:
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x89afa0ec with:
                         gas gas_remaining wei
                        args arg1, 6
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit LogReportSubmissionError_ExpiredAudit(arg1, msg.sender, 2 * ext_call.return_data[0]);
                else:
                    require arg2 <= 7
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x89afa0ec with:
                         gas gas_remaining wei
                        args arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x2c2206e4 with:
                         gas gas_remaining wei
                        args arg1, Array(len=arg3.length, data=arg3[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x3b08d35e with:
                         gas gas_remaining wei
                        args arg1, block.number
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.getAuditState(uint256 arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= 7
                    if ext_call.return_data[0] != 4:
                        require ext_call.return_data[0] <= 7
                        require ext_call.return_data[0] == 5
                    require arg2 <= 7
                    emit LogAuditFinished(arg1, msg.sender, arg2 << 248, Array(len=arg3.length, data=arg3[all]));
                    require arg2 <= 7
                    if arg2 == 4:
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0xc15185f5 with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0xfc0c546a with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit LogPayAuditor(arg1, msg.sender, ext_call.return_data[0]);
    else:
        require arg2 <= 7
        if arg2 != 5:
            require arg2 <= 7
            emit LogReportSubmissionError_InvalidResult(arg1, msg.sender, arg2);
        else:
            require ext_code.size(auditDataAddress)
            call auditDataAddress.getAuditState(uint256 arg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= 7
            if ext_call.return_data[0] != 2:
                require ext_call.return_data[0] <= 7
                emit LogReportSubmissionError_InvalidState(arg1, msg.sender, uint8(ext_call.return_data[0]));
            else:
                require ext_code.size(auditDataAddress)
                call auditDataAddress.0x3c9a5d59 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] != msg.sender:
                    emit LogReportSubmissionError_InvalidAuditor(arg1, msg.sender);
                else:
                    if arg1:
                        if stor4[arg1][0]:
                            stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                            stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                            stor4[arg1][0] = 0
                            stor4[arg1][1] = 0
                        else:
                            if stor4[arg1][1]:
                                stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                                stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                                stor4[arg1][0] = 0
                                stor4[arg1][1] = 0
                            else:
                                if arg1 == stor4[0][1]:
                                    stor4[stor4[arg1][1]][0] = stor4[arg1][0]
                                    stor4[stor4[arg1][0]][1] = stor4[arg1][1]
                                    stor4[arg1][0] = 0
                                    stor4[arg1][1] = 0
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x3c9a5d59 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 1 <= assignedRequestCount[ext_call.return_data[12 len 20]]
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x3c9a5d59 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    assignedRequestCount[ext_call.return_data[12 len 20]]--
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0xde42f045 with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(auditDataAddress)
                    call auditDataAddress.0x630eb125 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < block.number:
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0x89afa0ec with:
                             gas gas_remaining wei
                            args arg1, 6
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit LogReportSubmissionError_ExpiredAudit(arg1, msg.sender, 2 * ext_call.return_data[0]);
                    else:
                        require arg2 <= 7
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0x89afa0ec with:
                             gas gas_remaining wei
                            args arg1, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0x2c2206e4 with:
                             gas gas_remaining wei
                            args arg1, Array(len=arg3.length, data=arg3[all])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.0x3b08d35e with:
                             gas gas_remaining wei
                            args arg1, block.number
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(auditDataAddress)
                        call auditDataAddress.getAuditState(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= 7
                        if ext_call.return_data[0] != 4:
                            require ext_call.return_data[0] <= 7
                            require ext_call.return_data[0] == 5
                        require arg2 <= 7
                        emit LogAuditFinished(arg1, msg.sender, arg2 << 248, Array(len=arg3.length, data=arg3[all]));
                        require arg2 <= 7
                        if arg2 == 4:
                            require ext_code.size(auditDataAddress)
                            call auditDataAddress.0xc15185f5 with:
                                 gas gas_remaining wei
                                args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(auditDataAddress)
                            call auditDataAddress.0xfc0c546a with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit LogPayAuditor(arg1, msg.sender, ext_call.return_data[0]);
}

function requestAudit(string arg1, uint256 arg2) {
    require not stor0
    require arg2 > 0
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0x23d2691b with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), 96, arg2, arg1.length, arg1[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(auditDataAddress)
    call auditDataAddress.0xc15185f5 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
    delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.0xf593633c with:
         gas gas_remaining wei
        args 2, ext_call.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                    if stor3[ext_call.return_data[0]][0][0]:
                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                    else:
                        if stor3[ext_call.return_data[0]][0][1]:
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                        else:
                            if 0 == stor3[ext_call.return_data[0]][0][1]:
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
    else:
        require ext_code.size(0x9acb1f968e798f3fd3545094a4637cb4179d2557)
        delegate 0x9acb1f968e798f3fd3545094a4637cb4179d2557.'5*qK' with:
             gas gas_remaining wei
            args Mask(224, 0, '5*qK'), 2, 0, ext_call.return_data[0], 1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if stor2[ext_call.return_data[0]][0]:
            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                    if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                        if stor3[ext_call.return_data[0]][0][0]:
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                        else:
                            if stor3[ext_call.return_data[0]][0][1]:
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                            else:
                                if 0 == stor3[ext_call.return_data[0]][0][1]:
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
        else:
            if stor2[ext_call.return_data[0]][1]:
                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                    if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                        if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                            if stor3[ext_call.return_data[0]][0][0]:
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                            else:
                                if stor3[ext_call.return_data[0]][0][1]:
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                else:
                                    if 0 == stor3[ext_call.return_data[0]][0][1]:
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
            else:
                if ext_call.return_data[0] == stor2[0][1]:
                    if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                        if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                            if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                if stor3[ext_call.return_data[0]][0][0]:
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                else:
                                    if stor3[ext_call.return_data[0]][0][1]:
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                    else:
                                        if 0 == stor3[ext_call.return_data[0]][0][1]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                else:
                    if stor2[delegate.return_data[0]][0]:
                        stor2[ext_call.return_data[0]][1] = delegate.return_data[0]
                        stor2[delegate.return_data[0]][0] = ext_call.return_data[0]
                        stor2[stor2[delegate.return_data[0]][0]][1] = ext_call.return_data[0]
                        stor2[ext_call.return_data[0]][0] = stor2[delegate.return_data[0]][0]
                        if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                                if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                    if stor3[ext_call.return_data[0]][0][0]:
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                        stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                        stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                    else:
                                        if stor3[ext_call.return_data[0]][0][1]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                        else:
                                            if 0 == stor3[ext_call.return_data[0]][0][1]:
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                    else:
                        if stor2[delegate.return_data[0]][1]:
                            stor2[ext_call.return_data[0]][1] = delegate.return_data[0]
                            stor2[delegate.return_data[0]][0] = ext_call.return_data[0]
                            stor2[stor2[delegate.return_data[0]][0]][1] = ext_call.return_data[0]
                            stor2[ext_call.return_data[0]][0] = stor2[delegate.return_data[0]][0]
                            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                                    if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                        if stor3[ext_call.return_data[0]][0][0]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                        else:
                                            if stor3[ext_call.return_data[0]][0][1]:
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                            else:
                                                if 0 == stor3[ext_call.return_data[0]][0][1]:
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                        else:
                            if delegate.return_data[0] == stor2[0][1]:
                                stor2[ext_call.return_data[0]][1] = delegate.return_data[0]
                                stor2[delegate.return_data[0]][0] = ext_call.return_data[0]
                                stor2[stor2[delegate.return_data[0]][0]][1] = ext_call.return_data[0]
                                stor2[ext_call.return_data[0]][0] = stor2[delegate.return_data[0]][0]
                            if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][0]:
                                if not stor3[ext_call.return_data[0]][ext_call.return_data[0]][1]:
                                    if ext_call.return_data[0] != stor3[ext_call.return_data[0]][0][1]:
                                        if stor3[ext_call.return_data[0]][0][0]:
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                            stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                            stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                        else:
                                            if stor3[ext_call.return_data[0]][0][1]:
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
                                            else:
                                                if 0 == stor3[ext_call.return_data[0]][0][1]:
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][1] = 0
                                                    stor3[ext_call.return_data[0]][0][0] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][stor3[ext_call.return_data[0]][0][0]][1] = ext_call.return_data[0]
                                                    stor3[ext_call.return_data[0]][ext_call.return_data[0]][0] = stor3[ext_call.return_data[0]][0][0]
    emit LogAuditRequested(ext_call.return_data[0], msg.sender, Array(len=arg1.length, data=arg1[all]), arg2);
    return ext_call.return_data[0]
}



}
