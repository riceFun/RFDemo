//
//  ViewController.m
//  RFDataLearning
//
//  Created by riceFun on 2019/2/13.
//  Copyright © 2019 riceFun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    
    
    PrintN(10);
    NSLog(@"========================");
    PrintN_type2(10);
    
    Stack *stack = Stack(malloc(10));
}


-(void)functionTime{
    clock_t start,stop;//clock_t 是clock()函数返回的变量类型
    double duration;//记录被测函数的运行时间，以秒为单位
    start = clock();
//    func() //被测函数
    stop = clock();
    duration = ((double)(stop - start))/CLK_TCK;
}

//循环实现
void PrintN (int N){
    for (int i = 1; i <= N; i ++) {
        printf("%d\n",i);
    }
}

//递归实现  S(n) 过大 有可能会爆掉
void PrintN_type2 (int N){
    if (N) {
        PrintN(N - 1);
        printf("%d\n",N);
    }
}

//线性表的顺序存储实现：利用数组的  连续存储空间顺序存  放线性表的各个元素
//typedef struct{
//    id Data[MAXSIZE];
//    int Last;
//}List;

#define MaxSize 10
typedef struct {
    int Data[MaxSize];
    int top;
}Stack;

//入栈
void Push(Stack *PtrS, int item){
    if (PtrS ->top == MaxSize - 1) {
        printf("stack is full");
        return;
    }else{
        PtrS->Data[++(PtrS->top)] = item;//这句可以拆解为(PtrS->top)++;   PtrS->Data[PtrS ->top] = item;
        return;
    }
}

//出栈
void Pop(Stack *PtrS){
    if (PtrS->top == -1) {
        printf("堆栈空");
        return;
    }else{
        PtrS->Data[(PtrS->top)--];
        return;
    }
}
@end
