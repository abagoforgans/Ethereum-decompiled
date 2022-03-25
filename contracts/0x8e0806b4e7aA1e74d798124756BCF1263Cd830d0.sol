contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 681]




// =====================  Runtime code  =====================


mapping of struct stor0;
uint256 stor1;
uint256 numRef;

function numRef() payable {
    return numRef
}

function _fallback() payable {
  stop
}

function deposit(uint256 arg1) payable {
    if 0 == msg.value:
        return 0
    stor0[arg1].field_1024 += msg.value
    stor0[arg1][6][address(msg.sender)].field_256 += msg.value
    numRef++
    stor0[arg1][6][address(msg.sender)].field_0 = numRef
    emit depositFlag(address(msg.sender), stor0[arg1][6][address(msg.sender)].field_256, numRef);
    return 1
}

function withdraw(uint256 arg1, address arg2, uint256 arg3) payable {
    if stor0[arg3].field_256 != msg.sender:
        return 0
    if stor1 < arg1:
        return 0
    if 0 == arg1:
        return 0
    stor0[arg3][6][address(arg2)].field_256 -= arg1
    call arg2 with:
       value arg1 wei
         gas 0 wei
    emit withdrawFlag(address(arg2), arg1, stor0[arg3][6][address(arg2)].field_256);
    return 1
}

function newvow(uint256 arg1, address arg2) payable {
    stor1++
    stor0[stor1].field_0 = msg.sender or Mask(96, 160, stor0[stor1].field_0)
    stor0[stor1].field_512 = msg.value
    stor0[stor1].field_768 = arg1
    stor0[stor1].field_256 = arg2 or Mask(96, 160, stor0[stor1].field_256)
    stor0[stor1].field_1280 = 0
    stor0[stor1].field_1024 = 0
    emit newVowIdFlag(address(msg.sender), stor1, arg1);
    return stor1
}



}
