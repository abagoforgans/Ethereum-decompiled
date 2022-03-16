contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1946]




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint256 name;
mapping of struct owner;

function name(address arg1) payable {
    return name[address(arg1)]
}

function owner(bytes32 arg1) payable {
    return owner[arg1].field_0
}

function content(bytes32 arg1) payable {
    return owner[arg1].field_768
}

function addr(bytes32 arg1) payable {
    return owner[arg1].field_256
}

function subRegistrar(bytes32 arg1) payable {
    return owner[arg1].field_512
}

function Registrar() payable {
  stop
}

function _fallback() payable {
  stop
}

function setContent(bytes32 arg1, bytes32 arg2) payable {
    if msg.sender == owner[arg1].field_0:
        owner[arg1].field_768 = arg2
        emit code.data[1914 len 32]: arg1
}

function transfer(bytes32 arg1, address arg2) payable {
    if msg.sender == owner[arg1].field_0:
        owner[arg1].field_0 = arg2 or Mask(96, 160, owner[arg1].field_0)
        emit code.data[1914 len 32]: arg1
}

function setSubRegistrar(bytes32 arg1, address arg2) payable {
    if msg.sender == owner[arg1].field_0:
        owner[arg1].field_512 = arg2 or Mask(96, 160, owner[arg1].field_512)
        emit code.data[1914 len 32]: arg1
}

function setAddress(bytes32 arg1, address arg2, bool arg3) payable {
    if msg.sender == owner[arg1].field_0:
        owner[arg1].field_256 = arg2 or Mask(96, 160, owner[arg1].field_256)
        if arg3:
            emit PrimaryChanged(arg1, arg2);
            name[address(arg2)] = arg1
        emit code.data[1914 len 32]: arg1
}

function disown(bytes32 arg1) payable {
    if msg.sender == owner[arg1].field_0:
        if arg1 == name[stor2[arg1].field_256]:
            emit PrimaryChanged(arg1, owner[arg1].field_256);
            name[stor2[arg1].field_256] = 0
        owner[arg1].field_0 = 0
        owner[arg1].field_256 = 0
        owner[arg1].field_512 = 0
        owner[arg1].field_768 = 0
        owner[arg1].field_1024 = 0
        owner[arg1].field_1280 = 0
        emit code.data[1914 len 32]: arg1
}

function reserve(bytes32 arg1) payable {
    if arg1 != Mask(236, 20, arg1):
        if not owner[arg1].field_0:
            owner[arg1].field_0 = msg.sender or Mask(96, 160, owner[arg1].field_0)
            emit code.data[1914 len 32]: arg1
    else:
        if block.timestamp >= owner[arg1].field_1280:
            if arg1 != Mask(236, 20, arg1):
                if not owner[arg1].field_0:
                    owner[arg1].field_0 = msg.sender or Mask(96, 160, owner[arg1].field_0)
                    emit code.data[1914 len 32]: arg1
            else:
                if stor0[arg1].field_1024 <= 0:
                    if msg.value > stor0[arg1].field_256:
                        stor0[arg1].field_512 = stor0[arg1].field_256
                        stor0[arg1].field_768 += msg.value
                        stor0[arg1].field_256 = msg.value
                        stor0[arg1].field_0 = msg.sender or Mask(96, 160, stor0[arg1].field_0)
                        stor0[arg1].field_1024 = block.timestamp + (168 * 24 * 3600)
                        emit NewBid(msg.sender, msg.value, arg1);
                else:
                    if block.timestamp <= stor0[arg1].field_1024:
                        if msg.value > stor0[arg1].field_256:
                            stor0[arg1].field_512 = stor0[arg1].field_256
                            stor0[arg1].field_768 += msg.value
                            stor0[arg1].field_256 = msg.value
                            stor0[arg1].field_0 = msg.sender or Mask(96, 160, stor0[arg1].field_0)
                            stor0[arg1].field_1024 = block.timestamp + (168 * 24 * 3600)
                            emit NewBid(msg.sender, msg.value, arg1);
                    else:
                        emit AuctionEnded(stor0[arg1].field_0, arg1);
                        if 0 == owner[arg1].field_0:
                            call stor0[arg1].field_0 with:
                               value stor0[arg1].field_256 - stor0[arg1].field_512 wei
                                 gas 0 wei
                        else:
                            call owner[arg1].field_0 with:
                               value stor0[arg1].field_768 - (stor0[arg1].field_256 / 100) wei
                                 gas 0 wei
                        owner[arg1].field_0 = stor0[arg1].field_0
                        emit code.data[1914 len 32]: arg1
                        stor0[arg1].field_0 = 0
                        stor0[arg1].field_256 = 0
                        stor0[arg1].field_512 = 0
                        stor0[arg1].field_768 = 0
                        stor0[arg1].field_1024 = 0
}



}
