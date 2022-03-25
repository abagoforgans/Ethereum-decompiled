contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    require msg.sender == msg.sender
    if bool(stor2[address(msg.sender)]) != 1:
        stor2[address(msg.sender)] = 1
        emit RegistrantApproval(msg.sender);
    return code.data[178 len 2745]
}



// =====================  Runtime code  =====================


#
#  - fipsRegisterMulti(uint256 arg1, address arg2, bytes arg3)
#  - fipsRegister(address arg1, bytes arg2)
#
address stor0;
mapping of address fipsOwner;
mapping of uint8 stor2;

function fipsOwner(bytes20 arg1) {
    return address(fipsOwner[Mask(160, 96, arg1)])
}

function _fallback() {
    revert 
}

function fipsIsRegistered(bytes20 arg1) {
    if address(fipsOwner[Mask(160, 96, arg1)]):
        return 1
    else:
        return 0
}

function registrantRemove(address arg1) {
    require stor0 == msg.sender
    if 1 == bool(stor2[address(arg1)]):
        stor2[address(arg1)] = 0
        emit RegistrantRemoval(arg1);
}

function registrantApprove(address arg1) {
    require stor0 == msg.sender
    if bool(stor2[address(arg1)]) != 1:
        stor2[address(arg1)] = 1
        emit RegistrantApproval(arg1);
}

function withdrawFunds() {
    require stor0 == msg.sender
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function fipsTransfer(bytes20 arg1, address arg2) {
    if address(fipsOwner[Mask(160, 96, arg1)]) == msg.sender:
        uint256(fipsOwner[Mask(160, 96, arg1)]) = arg2 or Mask(96, 160, uint256(fipsOwner[Mask(160, 96, arg1)]))
        emit FipsTransfer(Mask(160, 96, arg1), msg.sender, arg2);
}

function fipsPublishData(bytes20 arg1, bytes arg2) {
    if stor0 == msg.sender:
        emit FipsData(Array(len=arg2.length, data=arg2[all]), Mask(160, 96, arg1), msg.sender);
    else:
        if address(fipsOwner[Mask(160, 96, arg1)]) == msg.sender:
            emit FipsData(Array(len=arg2.length, data=arg2[all]), Mask(160, 96, arg1), msg.sender);
}

function fipsLegacyRegister(bytes20 arg1, address arg2, bytes arg3) {
    if 1 == bool(stor2[address(msg.sender)]):
        if not address(fipsOwner[Mask(160, 96, arg1)]):
            uint256(fipsOwner[Mask(160, 96, arg1)]) = arg2 or Mask(96, 160, uint256(fipsOwner[Mask(160, 96, arg1)]))
            emit FipsRegistration(Mask(160, 96, arg1), arg2);
            if arg3.length > 0:
                emit FipsData(Array(len=arg3.length, data=arg3[all]), Mask(160, 96, arg1), arg2);
}

function fipsTransferMulti(bytes20[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = Mask(160, 96, mem[(32 * idx) + 128])
        mem[32] = 1
        if address(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]) == msg.sender:
            mem[0] = Mask(160, 96, mem[(32 * idx) + 128])
            mem[32] = 1
            uint256(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]) = arg2 or Mask(96, 160, uint256(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]))
            emit FipsTransfer(Mask(160, 96, mem[(32 * idx) + 128]), msg.sender, arg2);
        idx = idx + 1
        continue 
}

function fipsLegacyRegisterMulti(bytes20[] arg1, address arg2, bytes arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + ceil32(arg3.length) + 160
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len arg3.length] = arg3[all]
    mem[0] = msg.sender
    if 1 == bool(stor2[address(msg.sender)]):
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _19 = mem[(32 * idx) + 128]
            mem[0] = Mask(160, 96, mem[(32 * idx) + 128])
            mem[32] = 1
            if not address(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]):
                mem[0] = Mask(160, 96, mem[(32 * idx) + 128])
                mem[32] = 1
                uint256(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]) = arg2 or Mask(96, 160, uint256(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]))
                emit FipsRegistration(Mask(160, 96, mem[(32 * idx) + 128]), arg2);
                if mem[(32 * arg1.length) + 128] > 0:
                    mem[mem[64]] = 32
                    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
                    _26 = mem[(32 * arg1.length) + 128]
                    mem[mem[64] + 64 len mem[(32 * arg1.length) + 128]] = mem[(32 * arg1.length) + 160 len mem[(32 * arg1.length) + 128]]
                    if not _26 % 32:
                        emit FipsData(bytes20 rg1, address rg2, bytes rg3):
                                      32,
                                      mem[mem[64] + 32 len _26 + 32],
                                      Mask(160, 96, _19),
                                      arg2,
                    else:
                        mem[floor32(_26) + mem[64] + 64] = mem[floor32(_26) + mem[64] + -(_26 % 32) + 96 len _26 % 32]
                        emit FipsData(bytes20 rg1, address rg2, bytes rg3):
                                      32,
                                      mem[mem[64] + 32 len floor32(_26) + 64],
                                      Mask(160, 96, _19),
                                      arg2,
            idx = idx + 1
            continue 
}

function fipsPublishDataMulti(bytes20[] arg1, bytes arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + ceil32(arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _21 = mem[(32 * idx) + 128]
        if stor0 == msg.sender:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
            _25 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 64 len mem[(32 * arg1.length) + 128]] = mem[(32 * arg1.length) + 160 len mem[(32 * arg1.length) + 128]]
            if not _25 % 32:
                emit FipsData(bytes20 rg1, address rg2, bytes rg3):
                              32,
                              mem[mem[64] + 32 len _25 + 32],
                              Mask(160, 96, _21),
                              msg.sender,
            else:
                mem[floor32(_25) + mem[64] + 64] = mem[floor32(_25) + mem[64] + -(_25 % 32) + 96 len _25 % 32]
                emit FipsData(bytes20 rg1, address rg2, bytes rg3):
                              32,
                              mem[mem[64] + 32 len floor32(_25) + 64],
                              Mask(160, 96, _21),
                              msg.sender,
        else:
            mem[0] = Mask(160, 96, mem[(32 * idx) + 128])
            mem[32] = 1
            if address(fipsOwner[Mask(160, 96, mem[(32 * idx) + 128])]) == msg.sender:
                mem[mem[64]] = 32
                mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
                _30 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 64 len mem[(32 * arg1.length) + 128]] = mem[(32 * arg1.length) + 160 len mem[(32 * arg1.length) + 128]]
                if not _30 % 32:
                    emit FipsData(bytes20 rg1, address rg2, bytes rg3):
                                  32,
                                  mem[mem[64] + 32 len _30 + 32],
                                  Mask(160, 96, _21),
                                  msg.sender,
                else:
                    mem[floor32(_30) + mem[64] + 64] = mem[floor32(_30) + mem[64] + -(_30 % 32) + 96 len _30 % 32]
                    emit FipsData(bytes20 rg1, address rg2, bytes rg3):
                                  32,
                                  mem[mem[64] + 32 len floor32(_30) + 64],
                                  Mask(160, 96, _21),
                                  msg.sender,
        idx = idx + 1
        continue 
}



}
