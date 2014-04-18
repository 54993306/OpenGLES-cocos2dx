#include "HelloWorldScene.h"
#include "ParametricEquations.hpp"
#include "ObjSurface.hpp"
#include "RootViewController.h"
USING_NS_CC;

Scene* HelloWorld::createScene()
{
    // 'scene' is an autorelease object
    auto scene = Scene::create();
    
    // 'layer' is an autorelease object
    auto layer = HelloWorld::create();

    // add layer as a child to scene
    scene->addChild(layer);

    // return the scene
    return scene;
}




// on "init" you need to initialize your instance
bool HelloWorld::init()
{
    
    //////////////////////////////
    // 1. super init first
    if ( !Layer::init() )
    {
        return false;
    }
    auto winSize = Director::getInstance()->getVisibleSize();
    
    auto label = Label::create("Hello Triangle!", "Arial", 40);
    label->setPosition(cocos2d::Point(winSize.width/2, winSize.height/2));
    this->addChild(label);

 
    this->setTouchEnabled(true);
    this->setTouchMode(Touch::DispatchMode::ONE_BY_ONE);
    
   CHECK_GL_ERROR_DEBUG();
    
    return true;
}


void HelloWorld::draw(cocos2d::Renderer *renderer, const kmMat4 &transform, bool transformUpdated)
{
    Layer::draw(renderer, transform, transformUpdated);
}



bool HelloWorld::onTouchBegan(cocos2d::Touch *touch, cocos2d::Event *unused_event)
{
    [(RootViewController*)[UIApplication sharedApplication].keyWindow.rootViewController  takePhoto];

   
    
    return true;
}

void HelloWorld::onTouchMoved(cocos2d::Touch *touch, cocos2d::Event *unused_event)
{

}

void HelloWorld::onTouchCancelled(cocos2d::Touch *touch, cocos2d::Event *unused_event)
{
    
}

void HelloWorld::onTouchEnded(cocos2d::Touch *touch, cocos2d::Event *unused_event)
{
//    Image *im = new Image;
//    im->initWithImageFile("");

}

