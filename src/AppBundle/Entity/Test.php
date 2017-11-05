<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Test
 *
 * @ORM\Table(name="test")
 * @ORM\Entity
 */
class Test
{
    /**
     * @var string
     *
     * @ORM\Column(name="cualidad", type="string", length=20, nullable=true)
     */
    private $cualidad;

    /**
     * @var string
     *
     * @ORM\Column(name="valortest", type="string", length=20, nullable=true)
     */
    private $valortest;

    /**
     * @var string
     *
     * @ORM\Column(name="unidades", type="string", length=10, nullable=true)
     */
    private $unidades;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha", type="date", nullable=false)
     */
    private $fecha;

    /**
     * @var string
     *
     * @ORM\Column(name="observaion", type="string", length=200, nullable=true)
     */
    private $observaion;

    /**
     * @var integer
     *
     * @ORM\Column(name="idprofesor", type="integer", nullable=true)
     */
    private $idprofesor;

    /**
     * @var integer
     *
     * @ORM\Column(name="idalumno", type="integer", nullable=true)
     */
    private $idalumno;

    /**
     * @var integer
     *
     * @ORM\Column(name="idtest", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idtest;


}

