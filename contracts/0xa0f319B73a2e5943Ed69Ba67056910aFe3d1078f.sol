contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 returnWalletTxCount;

function returnWalletTxCount() {
    return returnWalletTxCount
}

function returnUserAccountAddress() {
    require ext_code.size(stor0)
    staticcall stor0.returnUserControlAddress(uint256 arg1) with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
    require ext_code.size(stor0)
    staticcall stor0.returnStaticContractAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall ext_call.return_data[0] with:
         funct call.data[0 len 4]
            gas gas_remaining wei
           args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function callTx(bytes arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg4.length
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + arg4.length + 160] = 0
    require ext_code.size(stor0)
    staticcall stor0.returnIsValidSendingKey(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require ext_code.size(stor0)
    staticcall stor0.returnUserControlAddress(uint256 arg1) with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 256] = 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 288] = 96
    mem[64] = ceil32(arg1.length) + ceil32(arg4.length) + 480
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 320] = this.address
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 352] = arg2
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 384] = arg3
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 416] = returnWalletTxCount
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 448] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = uint64(this.address) << 96
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = 64
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _17 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 608 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 480] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96
        _265 = sha3(mem[ceil32(arg1.length) + ceil32(arg4.length) + 512 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96])
        if arg1.length != 65:
            if address(ext_call.return_data[0]) != 0:
                return 0
            call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
               value arg3 wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            if not ext_call.success:
                _297 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608] = arg3
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640] = 64
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 672] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _299 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[_297 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _299 % 32:
                    emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                          mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len _299 + _297 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                          arg2,
                else:
                    mem[floor32(_299) + _297 + 96] = mem[floor32(_299) + _297 + -(_299 % 32) + 128 len _299 % 32]
                    emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                          mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len floor32(_299) + _297 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 480],
                                          arg2,
            else:
                _300 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608] = arg3
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640] = 64
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 672] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _302 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[_300 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _302 % 32:
                    emit Execution(address arg1, uint256 arg2, bytes arg3):
                                   mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len _302 + _300 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                   arg2,
                else:
                    mem[floor32(_302) + _300 + 96] = mem[floor32(_302) + _300 + -(_302 % 32) + 128 len _302 % 32]
                    emit Execution(address arg1, uint256 arg2, bytes arg3):
                                   mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len floor32(_302) + _300 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 480],
                                   arg2,
        else:
            _272 = mem[160]
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
                _279 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608] = 0
                mem[64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640
                _280 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640] = _265
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 672] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 704] = mem[128]
                mem[_280 + 96] = _272
                signer = erecover(mem[_279 + 32 len _280 + -_279 + 96]) 
                mem[_279] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != address(ext_call.return_data[0]):
                    return 0
                call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
                   value arg3 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                mem[_279 + 32] = arg3
                mem[_279 + 64] = 64
                mem[_279 + 96] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                if not ext_call.success:
                    _349 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[_279 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _349 % 32:
                        emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                              arg3,
                                              64,
                                              mem[_279 + 96 len _349 + 32],
                                              arg2,
                    else:
                        mem[floor32(_349) + _279 + 128] = mem[floor32(_349) + _279 + -(_349 % 32) + 160 len _349 % 32]
                        emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                              arg3,
                                              64,
                                              mem[_279 + 96 len floor32(_349) + 64],
                                              arg2,
                else:
                    _352 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[_279 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _352 % 32:
                        emit Execution(address arg1, uint256 arg2, bytes arg3):
                                       arg3,
                                       64,
                                       mem[_279 + 96 len _352 + 32],
                                       arg2,
                    else:
                        mem[floor32(_352) + _279 + 128] = mem[floor32(_352) + _279 + -(_352 % 32) + 160 len _352 % 32]
                        emit Execution(address arg1, uint256 arg2, bytes arg3):
                                       arg3,
                                       64,
                                       mem[_279 + 96 len floor32(_352) + 64],
                                       arg2,
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    if address(ext_call.return_data[0]) != 0:
                        return 0
                    call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
                       value arg3 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                    if not ext_call.success:
                        _355 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608
                        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608] = arg3
                        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640] = 64
                        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 672] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        _357 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_355 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _357 % 32:
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len _357 + _355 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                                  arg2,
                        else:
                            mem[floor32(_357) + _355 + 96] = mem[floor32(_357) + _355 + -(_357 % 32) + 128 len _357 % 32]
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len floor32(_357) + _355 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 480],
                                                  arg2,
                    else:
                        _358 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608
                        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608] = arg3
                        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640] = 64
                        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 672] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        _360 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_358 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _360 % 32:
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len _360 + _358 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                           arg2,
                        else:
                            mem[floor32(_360) + _358 + 96] = mem[floor32(_360) + _358 + -(_360 % 32) + 128 len _360 % 32]
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           mem[_17 + ceil32(arg1.length) + ceil32(arg4.length) + 608 len floor32(_360) + _358 + -_17 + -ceil32(arg1.length) + -ceil32(arg4.length) - 480],
                                           arg2,
                else:
                    _286 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608
                    mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 608] = 0
                    mem[64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640
                    _287 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640
                    mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 640] = _265
                    mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 672] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                    mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + ceil32(arg1.length) + ceil32(arg4.length) + 704] = mem[128]
                    mem[_287 + 96] = _272
                    signer = erecover(mem[_286 + 32 len _287 + -_286 + 96]) 
                    mem[_286] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != address(ext_call.return_data[0]):
                        return 0
                    call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
                       value arg3 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                    mem[_286 + 32] = arg3
                    mem[_286 + 64] = 64
                    mem[_286 + 96] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    if not ext_call.success:
                        _370 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_286 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _370 % 32:
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  arg3,
                                                  64,
                                                  mem[_286 + 96 len _370 + 32],
                                                  arg2,
                        else:
                            mem[floor32(_370) + _286 + 128] = mem[floor32(_370) + _286 + -(_370 % 32) + 160 len _370 % 32]
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  arg3,
                                                  64,
                                                  mem[_286 + 96 len floor32(_370) + 64],
                                                  arg2,
                    else:
                        _373 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_286 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _373 % 32:
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           arg3,
                                           64,
                                           mem[_286 + 96 len _373 + 32],
                                           arg2,
                        else:
                            mem[floor32(_373) + _286 + 128] = mem[floor32(_373) + _286 + -(_373 % 32) + 160 len _373 % 32]
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           arg3,
                                           64,
                                           mem[_286 + 96 len floor32(_373) + 64],
                                           arg2,
    else:
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 640 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[ceil32(arg1.length) + ceil32(arg4.length) + 480] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128
        _269 = sha3(mem[ceil32(arg1.length) + ceil32(arg4.length) + 512 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128])
        if arg1.length != 65:
            if address(ext_call.return_data[0]) != 0:
                return 0
            call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
               value arg3 wei
                 gas gas_remaining - 34710 wei
                args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
            if not ext_call.success:
                _312 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640] = arg3
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672] = 64
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 704] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _314 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[_312 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _314 % 32:
                    emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                          mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len _314 + _312 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 544],
                                          arg2,
                else:
                    mem[floor32(_314) + _312 + 96] = mem[floor32(_314) + _312 + -(_314 % 32) + 128 len _314 % 32]
                    emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                          mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len floor32(_314) + _312 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                          arg2,
            else:
                _315 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640] = arg3
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672] = 64
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 704] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                _317 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[_315 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                if not _317 % 32:
                    emit Execution(address arg1, uint256 arg2, bytes arg3):
                                   mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len _317 + _315 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 544],
                                   arg2,
                else:
                    mem[floor32(_317) + _315 + 96] = mem[floor32(_317) + _315 + -(_317 % 32) + 128 len _317 % 32]
                    emit Execution(address arg1, uint256 arg2, bytes arg3):
                                   mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len floor32(_317) + _315 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                   arg2,
        else:
            _276 = mem[160]
            if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
                _291 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640] = 0
                mem[64] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672
                _292 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672] = _269
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 704] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 736] = mem[128]
                mem[_292 + 96] = _276
                signer = erecover(mem[_291 + 32 len _292 + -_291 + 96]) 
                mem[_291] = signer
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                if address(signer) != address(ext_call.return_data[0]):
                    return 0
                call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
                   value arg3 wei
                     gas gas_remaining - 34710 wei
                    args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                mem[_291 + 32] = arg3
                mem[_291 + 64] = 64
                mem[_291 + 96] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                if not ext_call.success:
                    _380 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[_291 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _380 % 32:
                        emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                              arg3,
                                              64,
                                              mem[_291 + 96 len _380 + 32],
                                              arg2,
                    else:
                        mem[floor32(_380) + _291 + 128] = mem[floor32(_380) + _291 + -(_380 % 32) + 160 len _380 % 32]
                        emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                              arg3,
                                              64,
                                              mem[_291 + 96 len floor32(_380) + 64],
                                              arg2,
                else:
                    _383 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[_291 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                    if not _383 % 32:
                        emit Execution(address arg1, uint256 arg2, bytes arg3):
                                       arg3,
                                       64,
                                       mem[_291 + 96 len _383 + 32],
                                       arg2,
                    else:
                        mem[floor32(_383) + _291 + 128] = mem[floor32(_383) + _291 + -(_383 % 32) + 160 len _383 % 32]
                        emit Execution(address arg1, uint256 arg2, bytes arg3):
                                       arg3,
                                       64,
                                       mem[_291 + 96 len floor32(_383) + 64],
                                       arg2,
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
                    if address(ext_call.return_data[0]) != 0:
                        return 0
                    call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
                       value arg3 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                    if not ext_call.success:
                        _386 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640
                        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640] = arg3
                        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672] = 64
                        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 704] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        _388 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_386 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _388 % 32:
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len _388 + _386 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 544],
                                                  arg2,
                        else:
                            mem[floor32(_388) + _386 + 96] = mem[floor32(_388) + _386 + -(_388 % 32) + 128 len _388 % 32]
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len floor32(_388) + _386 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                                  arg2,
                    else:
                        _389 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640
                        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640] = arg3
                        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672] = 64
                        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 704] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        _391 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_389 + 96 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _391 % 32:
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len _391 + _389 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 544],
                                           arg2,
                        else:
                            mem[floor32(_391) + _389 + 96] = mem[floor32(_391) + _389 + -(_391 % 32) + 128 len _391 % 32]
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           mem[floor32(_17) + ceil32(arg1.length) + ceil32(arg4.length) + 640 len floor32(_391) + _389 + -floor32(_17) + -ceil32(arg1.length) + -ceil32(arg4.length) - 512],
                                           arg2,
                else:
                    _305 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640
                    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 640] = 0
                    mem[64] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672
                    _306 = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672
                    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 672] = _269
                    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 704] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
                    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 736] = mem[128]
                    mem[_306 + 96] = _276
                    signer = erecover(mem[_305 + 32 len _306 + -_305 + 96]) 
                    mem[_305] = signer
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    if address(signer) != address(ext_call.return_data[0]):
                        return 0
                    call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
                       value arg3 wei
                         gas gas_remaining - 34710 wei
                        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
                    mem[_305 + 32] = arg3
                    mem[_305 + 64] = 64
                    mem[_305 + 96] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    if not ext_call.success:
                        _402 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_305 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _402 % 32:
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  arg3,
                                                  64,
                                                  mem[_305 + 96 len _402 + 32],
                                                  arg2,
                        else:
                            mem[floor32(_402) + _305 + 128] = mem[floor32(_402) + _305 + -(_402 % 32) + 160 len _402 % 32]
                            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                                  arg3,
                                                  64,
                                                  mem[_305 + 96 len floor32(_402) + 64],
                                                  arg2,
                    else:
                        _405 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                        mem[_305 + 128 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
                        if not _405 % 32:
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           arg3,
                                           64,
                                           mem[_305 + 96 len _405 + 32],
                                           arg2,
                        else:
                            mem[floor32(_405) + _305 + 128] = mem[floor32(_405) + _305 + -(_405 % 32) + 160 len _405 % 32]
                            emit Execution(address arg1, uint256 arg2, bytes arg3):
                                           arg3,
                                           64,
                                           mem[_305 + 96 len floor32(_405) + 64],
                                           arg2,
    returnWalletTxCount++
    return 1
}



}
